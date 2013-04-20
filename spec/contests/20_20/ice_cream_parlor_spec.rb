require './lib/contests/20_20/ice_cream_parlor'

describe IceCreamParlor do

  specify 'with example data' do
    input = [ '2', '4', '5', '1 4 5 3 2', '4', '4', '2 2 4 3' ]
    output = [ '1 4', '1 2', '' ].join("\n")
    console_output = ConsoleFaker.with_fake_input(input) do
      IceCreamParlor.new
    end
    expect(console_output).to eq(output)
  end

end
