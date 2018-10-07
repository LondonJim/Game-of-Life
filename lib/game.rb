require_relative "board"

class Game

  attr_reader :board

  def initialize(board = Board.new)
    @board = board
  end

  def play(width = 5, height = 5)
    @board.create_grid(width, height)
  end

end
