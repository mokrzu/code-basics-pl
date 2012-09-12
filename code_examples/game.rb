word = "panda"
show = []
points = 3
number = word.split("").uniq.size

word.split("").each do |x|
	show << "_"
end

puts "Guess word with (#{word.size} letters)"
puts show.join(" ")

condition = true

while condition
	
	puts "Put next letter: "
	letter = gets.strip

	if word.include?(letter)
		word.split("").each_with_index do |element, index|
			if element == letter
				show[index] = letter
			end
		end

		puts "You're right."

		number -= 1

		if number == 0
			condition = false
		end
	else
		points -= 1

		puts "Wrong letter.#{points} trials left."

		if points == 0
			condition = false
		end
	end

	puts "\nWord = " + show.join(" ")
end

if number == 0
	puts "You win:)"
else
	puts "fail"
end