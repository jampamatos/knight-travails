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
board.display
