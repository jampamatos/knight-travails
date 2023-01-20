# frozen_string_literal: true

require_relative 'lib/modules/messages'
require_relative 'lib/board'

welcome_msg
input = start_game
loop do
  break unless input
  board = Board.new if input
  clear_screen
  board.display
  puts ''
  board.knight.knight_position = get_start_position
  clear_screen
  board.display
  end_pos, pos_input = get_end_position
  puts ''
  puts 'Calculating...'
  sleep(2)
  path, num_movs = board.knight.shortest_path(board.knight.knight_position, end_pos)
  puts ''
  puts "Knight will arrive at #{pos_input} in " + "#{num_movs} moves.".bold
  sleep(1)
  path.each_with_index do |move, idx|
    clear_screen
    board.knight.knight_position = move
    puts "#{"Move " "#{idx}"}".bold
    puts ''
    board.display
    sleep(2)
  end
  puts ''
  puts 'Done!'.bold.green
  input = play_again
  if input
    redo
  else
    quit_msg
    break
  end
end
