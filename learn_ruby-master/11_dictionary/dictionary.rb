class Dictionary
  # create entries and keywords hash and array when new Dictionary object is created
   def initialize
    @entries =  {}
    @keywords  = []
   end
   
   # adds params to @entries and @keywords
   def add(hash = {})                     
    # if param doesn't have a value just make the value nil, otherwise add the key and value to @entries
    hash.is_a?(String) ? @entries[hash] = nil : hash.each {|k,v| @entries[k] = v}                            
    # if params doesn't have a value add it to @keywords, otherwise, gets its key and add that to @keywords
    hash.is_a?(String) ? @keywords << hash : @keywords << hash.keys.join(' ')
   end
   
   def entries
    @entries
   end
   
   def keywords
     @keywords.sort
   end   
   
   def include?(word)
     @keywords.include?(word)
   end
   
   
   # I tried to use enumerable#inject on both the find method and printable method 
   # but ended up just using enumerable#each. From my understanding you can basically 
   # declare a variable in the params of .inject and add to that variable within the 
   # block
   def find(string)                                      
    reg = Regexp.new string              
    sum = {}
    finder = @entries.each do |key,value| 
      sum[key]=value if (key=~reg)!=nil   
    end     
    sum                              
   end
   
   def printable          
     string = ""
     @keywords.sort.each do |x| 
       string << "[#{x}] \"#{@entries[x]}\"\n"
     end 
     # removes the last \n in the string
     string.sub(/[\n]\Z/,'')
   end
end    