# frozen_string_literal: true

require_relative 'modules/chess_board_display'

class Board
  include ChessBoardDisplay
  attr_accessor :dimensions, :knight_position, :knight_path

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight_position = []
    @knight_path = []
  end

  def valid_position?(position)
    x, y = position
    x.between?(0, 7) && y.between?(0, 7)
  end
end

board = Board.new
board.display
