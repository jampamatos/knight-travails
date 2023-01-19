# frozen_string_literal: true

require_relative 'modules/chess_board_display'
require_relative 'knight'

class Board
  include ChessBoardDisplay
  attr_accessor :dimensions, :knight

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight = Knight.new
    #knight.board = self
  end

  def move_knight_to(position)
    @knight.move_to(position)
  end
end

board = Board.new

# Test case 1:
start_pos = [0, 0]
end_pos = [7, 7]
path, num_of_moves = board.knight.shortest_path(start_pos, end_pos)
puts "Shortest path: #{path}"
puts "Number of moves: #{num_of_moves}"

# Test case 2:
start_pos = [3, 3]
end_pos = [0, 0]
path, num_of_moves = board.knight.shortest_path(start_pos, end_pos)
puts "Shortest path: #{path}"
puts "Number of moves: #{num_of_moves}"

