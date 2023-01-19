# frozen_string_literal: true

require 'set'

class Knight
  attr_accessor :knight_position, :knight_path, :board

  def initialize
    @knight_position = [1,1]
    @knight_path = []
    #@board = nil
  end

  def move_to(position)
    raise 'Invalid position' unless valid_position?(position)

    @knight_path << @knight_position
    @knight_position = position
  end

  def valid_position?(position)
    x, y = position
    x.between?(0, 7) && y.between?(0, 7)
  end

  def shortest_path(start_pos, end_pos)
    queue = [[start_pos, [start_pos], 0]]
    visited = Set[start_pos]
    until queue.empty?
      current_pos, path, num_of_moves = queue.shift
      return path, num_of_moves if current_pos == end_pos

      possible_moves = find_possible_moves(current_pos)
      possible_moves.each do |move|
        unless visited.include?(move)
          visited.add(move)
          queue << [move, path + [move], num_of_moves + 1]
        end
      end
    end
    [nil, nil]
  end

  def find_possible_moves(position)
    x, y = position
    moves = [[x + 2, y + 1], [x + 2, y - 1], [x - 2, y + 1], [x - 2, y - 1],
             [x + 1, y + 2], [x + 1, y - 2], [x - 1, y + 2], [x - 1, y - 2]]
    moves.select { |move| valid_position?(move) }
  end
end