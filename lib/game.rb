require_relative "board"

class Game

  attr_reader :board

  def initialize(board = Board.new, cell_checker = CellChecker.new)
    @board = board
    @cell_checker = cell_checker
  end

  def play(width = 5, height = 5)
    board_one = @board.create_grid(width, height)

    board_two = @cell_checker.create_frame(board_one)

  end

end
