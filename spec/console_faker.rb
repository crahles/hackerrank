class ConsoleFaker

  def initialize(input_lines)
    @input_lines = input_lines
  end

  def gets
    @input_lines.shift
  end

  def self.with_fake_input(strings)
    begin
      result = StringIO.new
      $stdin = new(strings)
      $stdout = result
      $stderr = result
      yield
    ensure
      $stdin = STDIN
      $stdout = STDOUT
      $stderr = STDERR
    end
    result.string
  end
end
