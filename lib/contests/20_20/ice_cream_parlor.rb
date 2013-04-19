require 'matrix'

class IceCreamParlor

  def initialize
    count = $stdin.gets.to_i
    count.times { compute_testcase }
  end

  def compute_testcase
    c = $stdin.gets.to_i; $stdin.gets; p = $stdin.gets.split.map(&:to_i)
    m = Matrix.build(p.size) { |row, col| p[row] + p[col] }
    m.each_with_index do |e, row, col|
      return puts "#{row+1} #{col+1}" if e == c && row != col
    end
  end

end
