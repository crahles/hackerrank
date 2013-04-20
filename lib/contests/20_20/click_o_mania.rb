require 'matrix'

class ClickOMania

  def initialize
    (x, y, color_count) = $stdin.gets.split.map(&:to_i)
    grid = []
    x.times { grid << $stdin.gets.chars.to_a }
    nextMove(x, y, color_count, grid)
  end

  def nextMove(x, y, color, grid)

  end

end
