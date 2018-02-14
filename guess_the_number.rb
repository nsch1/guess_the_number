secret_number = 1 + rand(100)

def guess
	print "Make a guess: "
	@guess = gets.to_i
end

guess

loop do
	if @guess == secret_number
		puts "You win!"
		break
	elsif @guess < secret_number
		puts "Higher!"
		guess
	else
		puts "Lower!"
		guess
	end
end