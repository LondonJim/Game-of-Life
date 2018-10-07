class CellChecker

  def create_frame(grid)
    @new_frame = Marshal.load(Marshal.dump(grid))

    @x_position = 0
    @y_position = 0
    @neighbours = 0
    @width = @new_frame.count - 1
    @height = @new_frame[0].count - 1

    while @x_position <= @width do
      @y_position = 0
      x_check = @x_position

      while @y_position <= @height do
        y_check = @y_position

        rel_num_one = - 1
        rel_num_two = - 1

        num = 0

        while rel_num_one < 2
          rel_num_two = - 1
          while rel_num_two < 2

            if (@x_position + rel_num_one) < 0
              x_check = @width
            elsif (@x_position + rel_num_one) > @width
              x_check = 0
            else
              x_check = (@x_position + rel_num_one)
            end

            if (@y_position + rel_num_two) < 0
              y_check = @height
            elsif (@y_position + rel_num_two) > @height
              y_check = 0
            else
              y_check = (@y_position + rel_num_two)
            end

            unless @x_position == (x_check) && @y_position == (y_check)
              @neighbours += 1 if grid[x_check][y_check] == 1
            end
            rel_num_two += 1
          end
          rel_num_one += 1
        end
        @new_frame[@x_position][@y_position] = 0 if @neighbours < 2
        @new_frame[@x_position][@y_position] = 0 if @neighbours > 3
        @new_frame[@x_position][@y_position] = 1 if @neighbours == 3
        (@new_frame[@x_position][@y_position] = grid[@x_position][@y_position]) if @neighbours == 2
        @neighbours = 0
        @y_position += 1
      end
      @x_position += 1
    end
    return @new_frame
  end

end
