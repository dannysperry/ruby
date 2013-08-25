$space = "   "
$depth = 0


def log(string, result=true, &block)
  puts $space*$depth + "Beginning \"#{string}\"..."
  $depth += 1
  block.call
  $depth -= 1
  puts $space*$depth + "...\"#{string}\" finished, returning:"
  puts $space*$depth + result.to_s
end

log "outer block" do 
  log "some little block", "42" do
    log "teeny-tiny block", "lots of love" do
    end
  end
  log "yet another block", "I love Indian food!" do  
  end
end


# >> Beginning "outer block"...
# >>    Beginning "some little block"...
# >>       Beginning "teeny-tiny block"...
# >>       ..."teeny-tiny block" finished, returning:
# >>       lots of love
# >>    ..."some little block" finished, returning:
# >>    42
# >>    Beginning "yet another block"...
# >>    ..."yet another block" finished, returning:
# >>    I love Indian food!
# >> ..."outer block" finished, returning:
# >> true
