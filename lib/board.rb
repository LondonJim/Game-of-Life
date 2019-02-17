class Board

  def initialize
    @current_game_board = []
  end

  def create_grid(width = 5, height = 5)
    game_row = []

    width.times {
      height.times {
        game_row.push(random_binary)
      }
      @current_game_board.push(game_row)
      game_row = []
    }
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
