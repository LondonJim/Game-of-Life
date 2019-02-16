class CellChecker

  def create_frame(grid)
    @grid = grid
    @new_frame = Marshal.load(Marshal.dump(grid))
    @width = @grid.count - 1
    @height = @grid[0].count - 1
  end

  def cycle_through
    @neighbours = 0
    @x_position = 0
    for x in 0..@width
      @y_position = 0
      for y in 0..@height
        relative_num_x = -1
        relative_num_y = -1
        while relative_num_x < 2
          relative_num_y = -1
          while relative_num_y < 2
            cycle_check(cycle_x(relative_num_x), cycle_y(relative_num_y))
            relative_num_y += 1
          end
          relative_num_x += 1
        end
        @new_frame[@x_position][@y_position] = change_cell
        @grid_position = @grid[@x_position][@y_position]
        (@new_frame[@x_position][@y_position] = @grid_position) if @neighbours == 2
        @neighbours = 0
        @y_position += 1
      end
      @x_position += 1
    end
    @new_frame
  end

  private

  def cycle_x(relative_num_x)
    if (@x_position + relative_num_x) < 0
      @width
    elsif (@x_position + relative_num_x) > @width
      0
    else
      (@x_position + relative_num_x)
    end
  end

  def cycle_y(relative_num_y)
    if (@y_position + relative_num_y) < 0
      @height
    elsif (@y_position + relative_num_y) > @height
      0
    else
      (@y_position + relative_num_y)
    end
  end

  def cycle_check(x_check, y_check)
    unless (@x_position == (x_check)) && (@y_position == (y_check))
      @neighbours += 1 if @grid[x_check][y_check] == "█"
    end
  end

  def change_cell
    (@neighbours < 2 || @neighbours > 3) ? " " : "█"
  end

end
