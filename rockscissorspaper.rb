loop do 
print "(R)ock, (S)cissors, (P)aper? "
s = gets.strip.capitalize

if s == "R"
	user_choice = :rock
elsif s == "S"
	user_choice = :scissors
elsif s == "P"
	user_choise = :paper
else 
	puts "Can't understand what you want, sorry..."
	exit
end 
   arr = [:rock, :scissors, :paper]

computer_choice = arr[rand(0..2)]
puts "Computer choice  #{computer_choice}" #почему то при выборе R и у компьтера Р выводит что я выиграл?

if computer_choice == user_choice
	puts "Nobody wins"
elsif computer_choice = :rock == user_choice = :scissors
	puts "Computer wins"
elsif computer_choice = :rock == user_choice = :paper
	puts "You wins1"
elsif computer_choice = :scissors == user_choice = :rock
	puts "Computer wins"
elsif computer_choice = :scissors == user_choice = :paper
	puts "Computer wins" 
elsif computer_choice = :paper == user_choice = :rock
	puts "Computer wins"
else computer_choice = :paper == user_choice = :scissors
	puts "You wins"	
end
end