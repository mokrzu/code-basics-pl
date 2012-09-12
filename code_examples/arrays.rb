# Przykłady pracy z tablicami i napisami

title = "programming"

# usunięcie znaku nowej lini z napisu
"hello\n".strip
=> "hello"

# zamiana napisu na tablicę
title.split("")
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g"]

# przypisanie powyższej tablicy do zmiennej
my_array = title.split("")
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g"]

# dodanie elementu na koniec tablicy(oraz napisu)
title << "!"
=> "programming!"

my_array << "!"
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g", "!"]

# złączenie elementów tablicy w napis
["l", "e", "a", "r", "n"].join
=> "learn"

["l", "e", "a", "r", "n"].join(".")
=> "l.e.a.r.n"

# zamiana wybranego elementu (x) na inny (x)
text = "pxndx".split("")
=> ["p", "x", "n", "d", "x"]

text = text.map do |element|
	if element == "x"
		"a"
	else
		element
	end
end
=> ["p", "a", "n", "d", "a"]

text.join
=> "panda"