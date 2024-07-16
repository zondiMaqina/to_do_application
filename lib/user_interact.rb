require 'colorize'
require_relative 'personal_details'
# class creation for terminal user interface
class UserInteraction
  def initialize
    user_answer = appliation_starter
    until user_answer.downcase == 'yes' || user_answer.downcase == 'no'
      puts 'Please enter YES or NO'.colorize(:red)
      user_answer = gets.chomp
    end

    if user_answer == 'yes'
      user_response
      user_checker
    else
      puts 'Thank you for using the application :)'.colorize(:green)
    end
  end

  def appliation_starter
    puts 'Open application (Yes/No)'
    gets.chomp
  end

  private

  def user_response
    puts 'Hello there User!!! This is your to do list app :)'.upcase.colorize(color: :yelow, background: :blue)
    sleep(3)
  end

  def user_checker
    puts 'Is this YOUR FIRST TIME using this application?'.colorize(color: :yellow)
    user_answer = gets.chomp

    until user_answer.downcase == 'yes' || user_answer.downcase == 'no'
      puts 'Please answer a yes or no :('.colorize(color: :red)
      user_answer = gets.chomp
    end

    if user_answer.downcase == 'yes'
      personal_details
    else
      puts 'What would you like to do :)'.colorize(color: :orange)
    end
  end

  def personal_details
    PersonalDetails.new
  end
end
