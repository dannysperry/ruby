def measure(num=1)
  start = Time.now
  (1..num).each{yield}     
  finish = Time.now
  num > 1 ? (finish-start)/num : finish - start  
end 
