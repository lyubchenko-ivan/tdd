require './classes/classes.rb'




puts "Привет, это игра 4 в ряд"

print "Введите имя первого игрока: "
player1 = Player.new(gets.chomp.strip)

print "Введите имя второго игрока: "
player2 = Player.new(gets.chomp.strip)

print "Введи кол-во столбцов в игре: "
Desk.get_count_stacks = gets.chomp.strip.to_i

print "Введи кол-во строк в игре: "
Desk::Stack.size = gets.chomp.strip.to_i

move = 0
begin
  system("clear")
  Desk.display
  if move % 2 == 0
    print "#{player1.name}, в какой столбец вы хотите бросить фишку?"
    Desk.get_move(player1.amplua, gets.chomp.strip.to_i)
  else
    print "#{player2.name}, в какой столбец вы хотите бросить фишку?"
    Desk.get_move(player2.amplua, gets.chomp.strip.to_i)
  end
  move += 1
end while !(Desk.draw?) && !(Desk.win?(player1)) && !(Desk.win?(player2))

system 'clear'
Desk.display