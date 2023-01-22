# frozen_string_literal: true

require 'colorize'

def clear_screen
  system("clear") || system("cls")
end

def welcome_msg
  clear_screen
  puts '                                                                        '.black.on_red
  puts '                 WELCOME TO THE KNIGHT TRAVAILS PROJECT                 '.bold.black.on_red
  puts '                                                                        '.black.on_red
  puts ''
  puts ''
  puts "The #{'Knight Travalis Project'.bold.blue} is based on the fact that a knight in"
  puts 'chess can move to any square on the standard 8x8 chess board from any'
  puts 'other square on the board, given enough turns.'
  puts ''
  puts 'Its basic move is two steps forward and one step to the side.'
  puts 'It can face any direction.'
  puts ''
  puts 'The game will uses a shortest path algorithm to determine the'
  puts 'minimum number of moves the knight must make to reach the end'
  puts 'position from the start position.'
  puts ''
  puts "It's a fun and interactive way to visualize the unique"
  puts 'movement of the knight piece in chess and the many'
  puts 'possible paths it can take to reach a specific square on the board.'
  puts ''
  puts ''
end

def start_game
  loop do
    puts 'Press S to start the game or Q to quit'
    input = gets.chomp.downcase
    case input
    when 's'
      return true
    when 'q'
      quit_msg
      return false
    else
      puts "Invalid input, please type 'S' to start or 'Q' to quit."
    end
  end
end

def quit_msg
  clear_screen
  puts "#{"Thank you for playing!".bold}"
  puts ''
  puts "Done by #{'Jampa Matos'.italic}."
end

def get_start_position
  loop do
    print "Enter the starting position (e.g. A1): "
    start_pos = gets.chomp.upcase
    if /^[A-H][1-8]$/.match?(start_pos)
      y = start_pos[0].ord - 'A'.ord
      x = start_pos[1].to_i - 1
      return [x, y]
    else
      puts 'Invalid input. Please enter a valid starting position (e.g. A1)'
    end
  end
end

def get_end_position
  loop do
    print 'Enter the ending position (e.g. A1):'
    end_pos = gets.chomp.upcase
    if /^[A-H][1-8]$/.match?(end_pos)
      y = end_pos[0].ord - 'A'.ord
      x = end_pos[1].to_i - 1
      return [x, y], end_pos
    else
      puts 'Invalid input. Please enter a valid starting position (e.g. A1)'
    end
  end
end

def play_again
  loop do
    print "Do you want to play again? (y/n) "
    answer = gets.chomp.downcase
    case answer
    when "y"
      return true
    when "n"
      quit_msg
      return false
    else
      puts "Invalid input, please type 'y' to play again or 'n' to quit"
    end
  end
end

