# frozen_string_literal: true

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
    # Create a queue of positions to process, starting with the initial position
    positions_queue = [start_pos]
    # Create a hash to store the number of moves it took to reach each position
    processed_positions = {}
    # Initialize a variable to keep track of the number of moves taken
    num_of_moves = 0
    # Initialize an array to store the path taken to reach the end position
    path = [start_pos]

    # Keep looping until there are no more positions in the queue to process
    until positions_queue.empty?
      # Dequeue the next position to process
      current_position = positions_queue.shift

      # Generate all possible "L" shaped moves from this position
      possible_moves = find_possible_moves(current_position)

      # Iterate through the possible moves
      possible_moves.each do |move|
        # If this position has not been processed yet
        unless processed_positions.has_key?(move)
          # Enqueue the position to be processed
          positions_queue << move
          # Record the number of moves it took to reach this position
          processed_positions[move] = num_of_moves + 1
          # Add this position to the path
          path << move
        end
        # If this move is the end position
        if move == end_pos
          # Return the path and the number of moves
          return path, num_of_moves
        end
      end
      # Increase the number of moves taken
      num_of_moves += 1
    end
  end

  def find_possible_moves(position)
    x, y = position
    moves = [[x + 2, y + 1], [x + 2, y - 1], [x - 2, y + 1], [x - 2, y - 1],
             [x + 1, y + 2], [x + 1, y - 2], [x - 1, y + 2], [x - 1, y - 2]]
    moves.select { |move| valid_position?(move) }
  end
end