class Board

  def initialize(x_length = 5, y_length = 5)
    @x_length = x_length
    @y_length = y_length
    @game_board = []
  end

  def grid
    column = 1
    row = 1
    game_row = []

    while column <= @x_length do
      while row <= @y_length do
        game_row.push(random_binary)
        row += 1
      end
      @game_board.push(game_row)
      column += 1
      row = 1
      game_row = []
    end
    @game_board
  end

  private

  def random_binary
    Kernel.rand(2)
  end

end
