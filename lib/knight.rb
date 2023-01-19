# frozen_string_literal: true

class Knight
  attr_accessor :knight_position, :knight_path

  def initialize
    @knight_position = [1,1]
    @knight_path = []
  end
end