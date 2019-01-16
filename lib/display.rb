require 'curses'

class Display

  def initialize
    Curses.init_screen
    Curses.curs_set(0)
  end

  def frame(input_frame, width, height)
    window = Curses::Window.new(width, height, 0, 0)
    window.setpos(0, 0)
    input_frame.each_with_index do |x_column, y_row|
      line = ""
      x_column.each do |element|
        line += element
      end
      window.addstr(line)
      window.refresh
    end

  end

end
