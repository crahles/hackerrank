require './lib/contests/20_20/click_o_mania'

describe ClickOMania do

  specify 'with example data' do
    input = %w{ 5\ 10\ 2 BBRBRBRBBB RBRBRBBRRR RRRBBRBRRR RBRBRRRBBB RBRBRRRRBB }
    output = [ '4 3', '' ].join("\n")
    console_output = ConsoleFaker.with_fake_input(input) do
      ClickOMania.new
    end
    expect(console_output).to eq(output)
  end

  # specify 'with example data' do
  #   input = %w{ 20\ 10\ 2 BBRBRBRBBB RBRBRBBRRR RRRBBRBRRR RBRBRRRBBB
  #               RBRBRRRRBB RBBRBRRRRR BBRBRRBRBR BRBRBBRBBB RBBRRRRRRB
  #               BBRBRRBBRB BBBRBRRRBB BRBRRBRRBB BRRBBBBBRB RRBBRRBRRR
  #               RRRBRRRBBB RRRRRBBBRR BRRRBRRRBB BBBBRBRRRB BRBBBBBRBB
  #               RRRRRBBRRR }
  #   output = [ '0 1', '' ].join("\n")
  #   console_output = ConsoleFaker.with_fake_input(input) do
  #     ClickOMania.new
  #   end
  #   expect(console_output).to eq(output)
  # end

end
