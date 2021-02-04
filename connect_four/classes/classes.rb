class Desk


  @@desk = []


  #задает количество столбцов в игре
  def self.get_count_stacks=(count)
    @@stacks_count = count
    @@stacks_count.times do
      @@desk << Desk::Stack.new
    end
  end

  def self.get_move(amplua, column)
    column -= 1
    @@desk[column].stack << amplua
  end

  def self.display
    # range = (0..(Stack.size - 1)).reverse

    (0..(Stack.size - 1)).reverse_each do |i|

      @@stacks_count.times do |j|
        if !@@desk[j].stack[i].nil? then  print "#{@@desk[j].stack[i]} |"
        else print "  |" end
      end
      puts
    end
  end


  def self.desk
    return @@desk
  end


  def self.draw?
    @@desk.each {|stack| return  false if !stack.full?}

    return  true
  end

  def self.win?(player)
    amplua = player.amplua
    self.desk.each do |stack|
      if  stack.vertical?(amplua) || self.horizontal?(amplua)
        puts "Победил, #{player.name}"
        return true
      end
    end

    return false
  end


  def self.horizontal?(amplua)

    Stack.size.times do |stack_el|
      count = 0
      @@stacks_count.times do |stack|
        # break if self.desk[stack].stack[stack_el].nil?
        count += 1 if self.desk[stack].stack[stack_el] == amplua
        count = 0 if self.desk[stack].stack[stack_el] != amplua
        return true if count == 4
      end

    end

    return  false
  end

  class Stack
    attr_accessor :stack


    #создаем новый стэк
    def initialize
      @stack = []
      return self
    end

    def self.size=(size)
      @@size = size
    end

    def self.size
      return @@size
    end

    def vertical?(amplua)
      count = 0
      self.stack.each do |elem|
        count += 1 if elem == amplua
        count = 0 if elem != amplua
        return true if count == 4
      end
      return false
    end

    #полный ли стэк? возвращает истину либо ложь
    def full?
      return true if self.stack.length >= @@size
      return false if self.stack.length < @@size
    end

    #кладет значение в стэк , возвращает число
    def push(num)
      self.stack << num if !self.full?
    end



  end

end





class Player
  attr_reader :name, :amplua
  @@count_players = 0

  def initialize(name)
    @name = name
    @@count_players += 1
    @amplua = 'r' if @@count_players == 1
    @amplua = 'y' if @@count_players == 2
  end




end