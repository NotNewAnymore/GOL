require_relative "worldbuffer"
require 'colorize'

currentFrame = Worldbuffer.new
nextFrame = Worldbuffer.new
currentFrame.printworld
sleep 1
# currentFrame.randomizeworld
currentFrame.testworld
currentFrame.printworld
currentFrame.iterate

100.times{
  puts ""
  currentFrame.printworld
currentFrame.iterate
sleep 1
}
