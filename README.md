#Gra w zgadywanie słowa.

**Poziom**: podstawowy.

**Wymagania**: wcześniejsza styczność z Ruby oraz pracą w konsoli.

---

Zawartość przewodnika:

1. **Cel ćwiczenia**
2. **Opis zadania**
3. **Lista kroków**
4. **Wymagane struktury oraz metody**
5. **Rozwiązania problemów**
6. **Linki do dokumentacji**
7. **Zgłaszanie problemów i uwag**

---

## Cel ćwiczenia

Pierwszy tutorial ma za zadanie, utrwalić wiadomości na temat podstawowych metod, struktur danych, sterowania przepływem programu.  
Dodatkowo wprowadzi kilka nowych zagadnień, np. zapis i odczyt danych z pliku. 

Brak podanego gotowego rozwiązania, ma za zadanie zachęcić do samodzielnej pracy, 
jednocześnie przewodnik zawiera w sobie wyjaśnienia trudniejszych pojęć, 
rozwiązania (najbardziej prawdopodobnych) problemów, a także odnośniki do dokumentacji.

---

## Lista kroków

![workflow graph](http://cloud.github.com/downloads/mokrzu/code-basics-pl/workflow2.jpg)

---

## Wymagane struktury oraz metody

### Struktura tablicy

Tablica jest uporządkowanym zbiorem elementów.
Każdy element posiada unikalny dla niego adres w tablicy (index).
Dzięki temu możemy mieć bezpośredni dostęp do każdego elementu tablicy.

*Numeracja indeksów w tablicach, zawsze zaczyna się od zera.*

![array structure](http://cloud.github.com/downloads/mokrzu/code-basics-pl/array_index.jpg)


### Przykłady pracy z tablicami i napisami
```ruby
title = "programming"
```
usunięcie znaku nowej lini z napisu
```ruby
"hello\n".strip
=> "hello"
```
zamiana napisu na tablicę
```ruby
title.split("")
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g"]
```
przypisanie powyższej tablicy do zmiennej
```ruby
my_array = title.split("")
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g"]
```
dodanie elementu na koniec tablicy(oraz napisu)
```ruby
title << "!"
=> "programming!"

my_array << "!"
=> ["p", "r", "o", "g", "r", "a", "m", "m", "i", "n", "g", "!"]
```
złączenie elementów tablicy w napis
```ruby
["l", "e", "a", "r", "n"].join
=> "learn"

["l", "e", "a", "r", "n"].join(".")
=> "l.e.a.r.n"
```
zamiana wybranego elementu (x) na inny (a)
```ruby
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
```