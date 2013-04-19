require 'spec_helper'
require './lib/contests/20_20/ice_cream_parlor'

describe IceCreamParlor do

  specify 'whith sample 1 data' do
    input = [ '2', '4', '5', '1 4 5 3 2', '4', '4', '2 2 4 3' ]
    output = [ '1 4', '1 2' ]
    InputFaker.with_fake_input(input) do
      IceCreamParlor.new
      binding.pry
      @out.should_receive(:print).exactly(2).times.with([['1 4'], ['1 2']])
    end
  end
end
