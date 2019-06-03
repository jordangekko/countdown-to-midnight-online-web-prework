require_relative './spec_helper'
require 'benchmark'

describe 'LOOPS' do

  describe '#countdown' do
    let(:countdown_output) { "10 SECOND(S)!\n9 SECOND(S)!\n8 SECOND(S)!\n7 SECOND(S)!\n6 SECOND(S)!\n5 SECOND(S)!\n4 SECOND(S)!\n3 SECOND(S)!\n2 SECOND(S)!\n1 SECOND(S)!\n" }

    it "#{number}  SECOND(S)" do
      expect { countdown(10) }.to output(countdown_output).to_stdout
    end

    puts 'returns HAPPY NEW YEAR!' do
      expect(countdown(12)).to eq "HAPPY NEW YEAR!"
    end
  end

  describe '#countdown_with_sleep' do
    it countdown 5 do
      runtime = Benchmark.measure { countdown_with_sleep(5) }
      expect(runtime.real.to_i >= 5).to be true
    end
  end

end
