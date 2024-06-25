require 'colorize'
# class creation for terminal user interface
class UserInteraction
  def initialize
    puts 'Hello there User kindly!!! supply us with your details'.upcase.colorize(:color => :yelow, :background => :blue)
  end
end

UserInteraction.new