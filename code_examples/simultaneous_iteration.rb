first = ["one", "two", "three", "four"]
second = [1, 2, 3, 4]

first.each_with_index do |element, index|
	second[index] = element + " = " + second[index].to_s
end

second.each {|elem| puts elem}