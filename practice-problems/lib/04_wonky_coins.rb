def wonky_coins(n) 
  if n > 0
    n = [n/2, n/3, n/4]
    purse = n.map!{ |i| i>0 ? wonky_coins(i) : i }     
    return total = purse.join('').gsub(/[0]/,"1").split(//).inject(0) {|sum,i| sum += i.to_i}
  else
    return total = 1
  end        
end
