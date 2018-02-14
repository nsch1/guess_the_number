secret_number = 1 + rand(100)
attempts = 10

def guess
	print "Make a guess: "
	@guess = gets.to_i
end

until attempts == 0 do
	guess
	if @guess == secret_number
		puts "You win! You have #{attempts*10} points left!"
		break
	elsif @guess < secret_number
		puts "Higher!"
		attempts -= 1
	else
		puts "Lower!"
		attempts -= 1
	end
end

puts "GAME OVER!"