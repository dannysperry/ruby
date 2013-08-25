def silly_sum(array)
  i = 0
  number = 0
  while i < array.length
    number += (array[i] * i)
    i += 1
  end
  puts number
end

silly_sum([2,3,5,7])



#################################################################################################
##### NUM SQUARES ###############################################################################

def num_squares(num)
  i = 1
  perfects = 0
  while i < num
    square = i*i
    perfects += 1 if square < num
    i += 1
  end
  puts perfects
end

num_squares(5)  # 2
num_squares(10) # 3
num_squares(25) # 4



######################################################################################################
##### SILLY NUMS #####################################################################################

def silly_nums(max)
  array = []
  i = 0
  while i < max
    if (i%3==0) && (i%5==0)
      false 
    elsif (i%3==0) || (i%5==0)
      array << i
    end
    i += 1
  end
  array
end

# Write a method silly_nums that takes a number, max, and returns an array of the integers that
# are less than max
# are divisible by either three or five
# are not divisible by both three and five
 
silly_nums(3)  # []
silly_nums(10) # [3, 5, 6, 9]
silly_nums(20) # [3, 5, 6, 9, 10, 12, 18]