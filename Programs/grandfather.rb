def clock &block
  num = Time.now.hour
  num -= 12 if num > 11
  num = 12 if num == 0
  puts block.call * num
end

clock do
  "DONG! "
end
