M = 'land'
o = 'water'

world =[[M,M,o,o,o,o,o,o,o,o,o],
        [M,M,o,o,M,M,o,o,o,o,o],
        [o,o,o,o,o,o,o,o,M,M,o],
        [o,o,o,M,o,o,o,o,o,M,M],
        [o,o,o,M,o,M,M,o,o,M,o],
        [o,o,o,o,M,M,M,M,o,o,o],
        [o,o,o,M,M,M,M,M,M,M,M],
        [o,o,o,M,M,o,M,M,M,o,o],
        [o,o,o,o,o,o,M,M,o,o,o],
        [o,M,o,o,o,M,o,o,o,o,o],
        [o,o,o,o,o,M,o,o,o,o,o]]
        
def continent world, x, y
    if world[y] == nil or world[x] == nil or world[y][x] != 'land'
      return 0
    end
  
  size = 1
  world [y][x] = 'counted land'

  size = size + continent(world, x-1, y-1)
  size = size + continent(world, x,   y-1)
  size = size + continent(world, x+1, y-1)
  size = size + continent(world, x-1, y  )
  size = size + continent(world, x+1, y  )
  size = size + continent(world, x-1, y+1)
  size = size + continent(world, x  , y+1)
  size = size + continent(world, x+1, y+1)

  size
end

puts continent(world, 0, 0) # => nil
# >> 4
