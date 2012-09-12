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

## Opis zadania.

### Treść

Gra w zgadywanie słowa, polega na odgadnięciu hasła przez użytkownika(gracza).

Gracz w każdej turze podaje jedną literę. 
Jeżeli występuje ona w zgadywanym słowie, pokazane zostają pozycje na których odgadnięta litera się znajduje.  Liczba możliwych błędów, tzn. sytuacji gdy podana litera nie występuje w słowie, jest z góry ograniczona. Po jej przekroczeniu, użytkownik przegrywa. Wygrana oznacza podanie wszystkich liter hasła, nie przekraczając ilości możliwych błędów.

Gra powinna działaś z poziomu konsoli, tzn. po uruchomieniu skryptu ```ruby game.rb```.

Początkowo zgadywane słowo, będzie przechowywane w kodzie programu. 
W drugiej części zadania, dodamy możliwość wczytywania haseł do gry, z pliku tekstowego.

### Przykład działania

```
➭ ruby game.rb
Guess word with (5 letters)
_ _ _ _ _
Put next letter: 
a
You're right.

Word = _ a _ _ a
Put next letter: 
b
Wrong letter.2 trials left.

Word = _ a _ _ a
Put next letter: 
p
You're right.

Word = p a _ _ a
Put next letter: 
n
You're right.

Word = p a n _ a
Put next letter: 
d
You're right.

Word = p a n d a
You win:)
```

---

## Lista kroków

### Proces pisania programu

Pisząc program, staraj się jak najczęściej testować jego poprawność. Tak aby szybko wykrywać błędy. 
Z tego powodu, kolejne elementy dodawaj stopniowo. Przetestuj jego działanie. Jeżeli wszystko zachowuje się poprawnie, przejdź do implementacji następnej funkcjonalności.
(w tym samym momencie, dobrą praktyką  jest zapisanie wprowadzonych zmian w systemie kontroli wersji (np. git))


![workflow graph](http://cloud.github.com/downloads/mokrzu/code-basics-pl/workflow2.jpg)

### Opis kolejnych kroków.

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