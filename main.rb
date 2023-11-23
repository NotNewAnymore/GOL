require_relative "worldbuffer"
require 'fox16'

include Fox

currentFrame = Worldbuffer.new
sleep 1
currentFrame.randomizeworld
# currentFrame.testworld
# currentFrame.testworld2
# currentFrame.testworld3
# currentFrame.Herschel
# currentFrame.Acorn
# currentFrame.Pentadecathlon
displaythread = Thread.new{
  displayWindow = FXApp.new
  main = FXMainWindow.new(displayWindow, "Hello, World!" , :width => 800, :height => 400)
  label = FXLabel.new(main, "This is a test of the label", icon = nil, opts = LABEL_NORMAL, x = 100)
  label.font = FXFont.new(displayWindow,"Consolas")
  displayWindow.create
  main.show(PLACEMENT_SCREEN)
    writeToDisplay = Thread.new{
      loop do
      label.text = currentFrame.printworld
      currentFrame.iterate
      sleep 0.1
      end
    }
  displayWindow.run

  # 1000.times{
  #   # currentFrame.printadjacent
  #   currentFrame.printworld
  #   puts ""
  # currentFrame.iterate
  # sleep 0.1176512112192195
  # }
}

testinput = gets
1.times{
  puts "User input was: #{testinput}"
}
displaythread.join
