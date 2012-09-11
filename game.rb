word = "nothing"
show = []

word.split("").each do |x|
	show << "_"
end

puts "Guess word (#{word.size} letters)"
puts show.join(" ")

puts "Put next letter"
line = gets.strip

while word != line.strip

	line = gets
end