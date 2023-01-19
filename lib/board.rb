# frozen_string_literal: true

require_relative 'modules/chess_board_display'
require_relative 'knight'

class Board
  include ChessBoardDisplay
  attr_accessor :dimensions, :knight

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight = Knight.new
  end

  def valid_position?(position)
    x, y = position
    x.between?(0, 7) && y.between?(0, 7)
  end
end

board = Board.new
board.display
