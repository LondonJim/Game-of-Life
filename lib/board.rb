class Board

  def initialize
    @current_game_board = []
  end

  def create_grid(width = 5, height = 5)
    column = 1
    row = 1
    game_row = []

    while column <= width do
      while row <= height do
        game_row.push(random_binary)
        row += 1
      end
      @current_game_board.push(game_row)
      column += 1
      row = 1
      game_row = []
    end
    @current_game_board
  end

  private

  def random_binary
    if Kernel.rand(2) == 0
      return " "
    else
      return "█"
    end
  end

end
