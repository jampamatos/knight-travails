# frozen_string_literal: true

# ChessBoardDisplay module
#
# This module is responsible for displaying the chess board and the knight's position on the board
# It provides a `display` method that takes an instance of the `Board` class as an argument
# and prints the chess board on the console with the knight's position.
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
