def rec_intersection(rect1, rect2)  
  top_left =      [rect1[0][0], rect2[0][0]].max
  top_right =     [rect1[0][1], rect2[0][1]].max
  bottom_left =   [rect1[1][0], rect2[1][0]].min
  bottom_right =  [rect1[1][1], rect2[1][1]].min
  
  return result = [[top_left,top_right],
                   [bottom_left,bottom_right]]
end       
