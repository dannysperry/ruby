require "csv"     
require "sunlight/congress" 
require "erb"

Sunlight::Congress.api_key = "e179a6973728c4dd3fb1204283aaccb5"

def clean_zipcode(zipcode)
  zipcode.to_s.rjust(5,"0")[0..4]
end

def clean_phone_num(phone)
  phone = phone.gsub(/\D/,'') 
  case phone.length
  when 10
    phone
  when 11
    phone[0] == "1" ? phone[1..10] : phone = "bad number"
  else 
    # Wasn't really sure what we wanted to do with bad numbers, 
    # I was going to set the number as 000-000-0000 or raise an error and return false
    return phone = "bad number" 
  end
end  
 
# at first I came up with a way to show the top 3 results, then realized, the big wigs would probably want all the data.
   
# displays the hour and how often it showed up during registration
def hours(reg_date)
  stats(reg_date)
  @total_hours ||= []  
  hour = @date.hour
  @total_hours << hour  
  return "hours - #{total(@total_hours, @most_hours)}"
end   

# displays the wday in 0-6 format and how often it showed up during registration
def wdays(reg_date) 
  stats(reg_date)
  @total_wdays ||= []
  wday = @date.wday
  @total_wdays << wday
  return "wdays - #{total(@total_wdays, @most_wdays)}"
end

def legislators_by_zipcode(zipcode)  
  Sunlight::Congress::Legislator.by_zipcode(zipcode)
end     

def save_thank_you_letters(id,form_letter)
  Dir.mkdir("output") unless Dir.exists? "output"
   
  filename = "output/thanks_#{id}.html"
   
  File.open(filename,'w') do |file|
    file.puts form_letter
  end
end  

private

def stats(reg_date)                                  
  # hour = reg_date.match(/\d+:/).to_s.chop.to_i    
  
  # my original way to call hour before I figured out the DateTime.new idea. I had my brain in a knot trying to
  # figure out how to get the orginal string into a DateTime object with strptime, and also in a few lines. I had
  # had it in like 7-9 lines and wasn't happy with it :/
  
  @date = reg_date.gsub!(/\D/, ' ').split().map!{|x| x.to_i}
  @date = DateTime.new(@date[2],@date[0],@date[1],@date[3]) 
end     

def total(arr,storage)  
  storage ||= {}
  arr.each do |x| 
    amount = arr.count(x)
    storage[x] = amount
  end   
  ordered(storage) # calls ordered method to order arr by its largest occurences
end
  
def ordered(storage)
  # returns a hash with the hour and the number of times it occurs in the registration data
  ordered = storage.sort_by {|k,v|v}.reverse
  storage.clear
  ordered.each {|x| storage[x[0]] = x[1]}
  storage
end

puts 'EventManager Initialized'

contents = CSV.open "event_attendees.csv", headers: true, header_converters: :symbol

template_letter = File.read "form_letter.erb" 
erb_template = ERB.new template_letter

contents.each do |row|    
  id = row[0]
  name = row[:first_name]
  phone = clean_phone_num(row[:homephone]) 
  zipcode = clean_zipcode(row[:zipcode])     
  hours = hours(row[:regdate]) # displays hash ordering the hours from most occuring to least occuring
  wdays = wdays(row[:regdate]) # displays day of the week from most occuring to least occuring(0: sunday, 5:friday)
  legislators = legislators_by_zipcode(zipcode)
   
  form_letter = erb_template.result(binding) 
   
  save_thank_you_letters(id, form_letter)  
end