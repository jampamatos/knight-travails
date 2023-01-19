# frozen_string_literal: true

module ChessBoardDisplay
  def display(board = self)
    puts '   A  B   C  D   E  F   G  H'
    8.times do |x|
      print "#{x+1} "
      8.times do |y|
        print_cell(x, y, board)
      end
      puts
    end
  end

  private

  def print_cell(x, y, board)
    if board.knight_position[0] == x && board.knight_position[1] == y
      print '♞  '
    elsif (x + y).even?
      print '⬜ '
    else
      print '⬛ '
    end
  end
end

class Board
  include ChessBoardDisplay
  attr_accessor :dimensions, :knight_position, :knight_path

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight_position = [1,1]
    @knight_path = []
  end
end

board = Board.new
board.display
