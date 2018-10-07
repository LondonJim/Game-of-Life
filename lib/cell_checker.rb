class CellChecker

  def create_frame(grid)
    @grid = grid
    initial_settings

    while @x_position <= @width do
      @y_position = 0
      x_check = @x_position

      while @y_position <= @height do
        y_check = @y_position

        rel_num_one = - 1
        rel_num_two = - 1

        while rel_num_one < 2
          rel_num_two = - 1
          while rel_num_two < 2

            if @x_position + rel_num_one < 0
              x_check = @width
            elsif @x_position + rel_num_one > @width
              x_check = 0
            else
              x_check = @x_position + rel_num_one
            end

            if @y_position + rel_num_two < 0
              y_check = @height
            elsif @y_position + rel_num_two > @height
              y_check = 0
            else
              y_check = @x_position + rel_num_two
            end

            unless @x_position == (x_check) && @y_position == (y_check)
              @neighbours += 1 if @grid[x_check][y_check] == 1
            end
            rel_num_two += 1
          end
          rel_num_one += 1
        end
        @new_frame[@x_position][@y_position] = 0 if @neighbours < 2
        @neighbours = 0
        @y_position += 1
      end
      @x_position += 1
    end
    return @new_frame
  end

  private

  def initial_settings
    @new_frame = @grid
    @x_position = 0
    @y_position = 0
    @neighbours = 0
    @width = @grid.count - 1
    @height = @grid[0].count - 1
  end

end
