require_relative "worldbuffer"

currentFrame = Worldbuffer.new
currentFrame.printworld
sleep 1
currentFrame.randomizeworld
# currentFrame.testworld
# currentFrame.testworld2
# currentFrame.testworld3
# currentFrame.Herschel
# currentFrame.Acorn
1000.times{
  puts ""
  # currentFrame.printadjacent
  currentFrame.printworld

currentFrame.iterate
sleep 0.1
}
