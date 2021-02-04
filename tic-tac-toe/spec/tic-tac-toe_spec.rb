require 'rspec'
require_relative '../classes.rb'

player1 = Player.new
player2 = Player.new

game = Game.new(player1, player2)
# player1.initialize_amplua(1)
# player2.initialize_amplua(0)

desk = Desk.new

describe Desk do

  it "should return ok amplua if player 1 id == 1" do
    player1.initialize_amplua(1)
    player2.initialize_amplua(0)
    expect("player1 #{player1.amplua}").to eql "player1 X"
    expect("player2 #{player2.amplua}").to eql "player2 O"
  end



  it "should return ok amplua if player1 id == 2" do
    player1.initialize_amplua(2)
    player2.initialize_amplua(1)
    expect("player1 #{player1.amplua}").to eql "player1 O"
    expect("player2 #{player2.amplua}").to eql "player2 X"
  end



end