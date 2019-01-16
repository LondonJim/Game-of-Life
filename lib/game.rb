require_relative "board"
require_relative "cell_checker"
require_relative "display"


class Game

  attr_reader :board

  def initialize(board = Board.new, cell_checker = CellChecker.new, display = Display.new)
    @board = board
    @cell_checker = cell_checker
    @display = display
  end

  def play(width = 5, height = 5)
    board_one = @board.create_grid(width, height)

    while true
      @display.frame(board_one, width, height)
      board_two = @cell_checker.create_frame(board_one)
      board_one = board_two
      sleep(0.05)
      char = STDIN.read_nonblock(1) rescue nil
      break if char == " "
    end
    "game over"
  end

end
