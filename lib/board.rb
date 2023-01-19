# frozen_string_literal: true

class Board
  attr_accessor :dimensions, :knight_position, :knight_path

  def initialize
    @dimensions = Array.new(8) { Array.new(8, 0) }
    @knight_position = []
    @knight_path = []
  end
end