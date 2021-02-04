require 'rspec'
require_relative '../enumerable.rb'


describe Enumerable do

  it 'should ok my_select with (1..10) i % 2 == 0' do
    expect((1..10).my_select {|i| i % 2 == 0}).to eql [2, 4, 6, 8, 10]
  end

end