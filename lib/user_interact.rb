require 'colorize'
# class creation for terminal user interface
class UserInteraction
  def initialize
    puts 'Hello there User kindly!!! This is your to do list app :)'.upcase.colorize(:color => :yelow, :background => :blue)
    sleep(3)
    puts 'Open application (Yes/No)'
    user_answer = gets.chomp

    until user_answer.downcase == 'yes' || user_answer.downcase == 'no'
      puts 'Please enter YES or NO'.colorize(:red)
      user_answer = gets.chomp
    end

    if user_answer == 'yes'
      personal_details
    else
        puts 'Thank you for using the application :)'.colorize(:green)
    end
end

private

def personal_details
    puts 'please enter your name and surname'
end
end


