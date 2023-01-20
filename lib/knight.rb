# frozen_string_literal: true

require 'set'

# The Knight class represents a knight in a chess game. It has methods for moving the knight,
# checking if a move is valid, and finding the shortest path to a given position.
class Knight
  attr_accessor :knight_position, :knight_path, :board

  def initialize
    @knight_position = []
    @knight_path = []
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
    # Initialize our queue with the starting position and an empty path
    queue = [[start_pos, [start_pos], 0]]
    # Keep track of the positions we've already visited
    visited = Set[start_pos]

    until queue.empty?
      # Take the first position in the queue
      current_pos, path, num_of_moves = queue.shift
      # If we've reached the end position, return the path and number of moves
      return path, num_of_moves if current_pos == end_pos

      # Find all possible moves from the current position
      possible_moves = find_possible_moves(current_pos)
      # For each possible move
      possible_moves.each do |move|
        # If we haven't visited this position yet
        unless visited.include?(move)
          # Mark it as visited
          visited.add(move)
          # Add this move to the queue, along with the current path and number of moves
          queue << [move, path + [move], num_of_moves + 1]
        end
      end
    end
    # If we haven't found a path, return nil
    [nil, nil]
  end

  def find_possible_moves(position)
    x, y = position
    moves = [[x + 2, y + 1], [x + 2, y - 1], [x - 2, y + 1], [x - 2, y - 1],
             [x + 1, y + 2], [x + 1, y - 2], [x - 1, y + 2], [x - 1, y - 2]]
    moves.select { |move| valid_position?(move) }
  end
end
