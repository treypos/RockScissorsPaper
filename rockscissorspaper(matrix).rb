loop do

print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choice = :paper
else 
	puts "Can't understand what you want, sorry..."
	exit
end 
#выбор компьютера
arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]

puts "User choice #{user_choice}"
puts "Computer choice #{computer_choice}"
#определяем матрицу комбинаций:
#каждый элемент в массиве matrix будет еще одним массивом 
#в котором будут данные в следующем формате:
#1-ый выбор | 2-ой выбор| результат
matrix = [
[:rock, :rock, :draw],
[:scissors, :scissors, :draw],
[:paper, :paper, :draw],

[:rock, :scissors, :first_win],
[:rock, :paper, :second_win],

[:scrissors, :rock, :second_win],
[:scrissors, :paper, :first_win],

[:paper, :rock, :first_win],
[:paper, :scrissors, :second_win]
]
#для каждого в массиве matrix 
matrix.each do |item|
#проверим совпадает ли текущая комбинация массива с нашим выбором 
if item[0] == user_choice && item[1] == computer_choice

if item[2] == :first_win
puts "User wins!"
elsif item[2] == :second_win
puts "Computer wins"
end
end
end
end