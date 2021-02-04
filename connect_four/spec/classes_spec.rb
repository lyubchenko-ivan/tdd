require 'rspec'
require_relative '../classes/classes.rb'

describe Player do
  player1 = Player.new('Vasya')
  player2 = Player.new("Petya")
  it "should return color" do
    expect("#{player1.name} return #{player1.color}").to eql "Vasya return r"
    expect("#{player2.name} return #{player2.color}").to eql "Petya return y"
  end





end


describe Stack do

  # describe Stack do


  stack = Desk::Stack.new

    it "should return initialized stack" do
      expect("#{stack.stack}").to eql "[]"
    end


    it "should ok #full? if stack is empty" do
      Desk::Stack.size = 3
      expect("#{stack.full?}").to eql "false"
    end

    it "should ok #push" do
      stack.push('r')
      expect("#{stack.stack}").to eql "[\"r\"]"
    end


    it "should return true #full?" do
      Desk::Stack.size = 3
      3.times do |i|
        stack.push(i)
      end

      expect("#{stack.full?}").to eql "true"
    end





end



describe Desk do

  Desk.get_count_stacks = 7
  Desk::Stack.size = 6
  arr = []
  6.times {|i| arr << i}

  it "should return true if desk is full" do

    Desk.desk.each {|elem| elem.stack = arr}
    expect("#{Desk.draw?}").to eql "true"
  end


  it "should return false if desk isn`t full" do
    expect("#{Desk.draw?}").to eql "false"
  end


end