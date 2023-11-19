require_relative "worldbuffer"
require 'colorize'

currentFrame = Worldbuffer.new
currentFrame.printworld
sleep 1
# currentFrame.randomizeworld
currentFrame.testworld
# currentFrame.testworld2

100.times{
  puts ""
  currentFrame.printadjacent
  currentFrame.printworld

currentFrame.iterate
sleep 1
}
