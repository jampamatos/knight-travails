# frozen_string_literal: true

require_relative 'modules/chess_board_display'
require_relative 'knight'

# The Board class represents a chess board, with 8x8 dimensions.
# It includes the ChessBoardDisplay module for displaying the board.
# It has two attributes, dimensions which is a 2D array of 8x8 and knight which is an instance of the Knight class.
# The initialize method sets the dimensions to a 2D array of 8x8 with all values set to 0 and creates a new instance of the Knight class.
# The move_knight_to method takes a position as an argument and calls the move_to method on the knight instance, passing the position as an argument.
class Board
  include ChessBoardDisplay
  attr_accessor :dimensions, :knight

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight = Knight.new
  end

  def move_knight_to(position)
    @knight.move_to(position)
  end
end
