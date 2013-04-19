require 'pry'

class InputFaker
  def initialize(strings)
    @strings = strings
  end

  def gets
    next_string = @strings.shift
    next_string
  end

  def self.with_fake_input(strings)
    $stdin = new(strings)
    yield
  ensure
    $stdin = STDIN
  end
end

class << $stdout
  alias_method :real_write, :write
end
class << $stderr
  alias_method :real_write, :write
end


class Object
  def debug
    # For debugging, restore stubbed write
    class << $stdout
      alias_method :write, :real_write
    end
    class << $stderr
      alias_method :write, :real_write
    end

    binding.pry
  end
end

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'

  # capture output
  @output         = ''
  @err            = ''
  $stdout.stub!( :write ) { |*args| @output.<<( *args )}
  $stderr.stub!( :write ) { |*args| @err.<<( *args )}
end
