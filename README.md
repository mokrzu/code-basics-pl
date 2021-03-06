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

## Cel ćwiczenia.

Pierwszy tutorial ma za zadanie, utrwalić wiadomości na temat podstawowych metod, struktur danych, sterowania przepływem programu.  
Dodatkowo wprowadzi kilka nowych zagadnień, np. zapis i odczyt danych z pliku. 

Brak podanego gotowego rozwiązania, ma za zadanie zachęcić do samodzielnej pracy, 
jednocześnie przewodnik zawiera w sobie wyjaśnienia trudniejszych pojęć, 
rozwiązania (najbardziej prawdopodobnych) problemów, a także odnośniki do dokumentacji.

---

## Opis zadania.

### Treść.

Gra w zgadywanie słowa, polega na odgadnięciu hasła przez użytkownika(gracza).

Gracz w każdej turze podaje jedną literę. 
Jeżeli występuje ona w zgadywanym słowie, pokazane zostają pozycje na których odgadnięta litera się znajduje.  Liczba możliwych błędów, tzn. sytuacji gdy podana litera nie występuje w słowie, jest z góry ograniczona. Po jej przekroczeniu, użytkownik przegrywa. Wygrana oznacza podanie wszystkich liter hasła, nie przekraczając ilości możliwych błędów.

Gra powinna działaś z poziomu konsoli, tzn. po uruchomieniu skryptu ```ruby game.rb```.

Początkowo zgadywane słowo, będzie przechowywane w kodzie programu. 
W drugiej części zadania, dodamy możliwość wczytywania haseł do gry, z pliku tekstowego.

### Przykład działania.

```text
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

## Lista kroków.

### Proces pisania programu.

Pisząc program, staraj się jak najczęściej testować jego poprawność. Tak aby szybko wykrywać błędy. 
Z tego powodu, kolejne elementy dodawaj stopniowo. Przetestuj jego działanie. Jeżeli wszystko zachowuje się poprawnie, przejdź do implementacji następnej funkcjonalności.
(w tym samym momencie, dobrą praktyką  jest zapisanie wprowadzonych zmian w systemie kontroli wersji (np. git))


![workflow graph](http://cloud.github.com/downloads/mokrzu/code-basics-pl/workflow2.jpg)

**Uwaga:** gdy spotykasz się z nową strukturą lub metodą, wykorzystaj konsolę Rubiego (polecenie ```irb```), aby sprawdzić w praktyce jak działa dany element.  Z poziomu konsoli możesz przetestować wybrany fragment kodu, na przykładowych danych.

**Przykład** aby dowiedzieć się co zwraca metoda split() dla napisu:
```ruby
irb(main):001:0> "testing".split("")
=> ["t", "e", "s", "t", "i", "n", "g"]
irb(main):002:0> "testing".split("").class
=> Array
```


### Opis kolejnych kroków.

**1. Wejście/Wyjście**
Zaimplementuj podawanie słowa/litery z konsoli, oraz wypisanie go na ekran.  Pamiętaj że słowo wczytane z konsoli,  zawiera na końcu ‘znak końca linii: \n’. Użyj odpowiedniej metody by usunąć ten znak.

**2.  Tablica poprawnych liter.**
Stwórz tablicę, która będzie miała identyczną długość, jak szukane hasło a także będzie wypełniona znakami podkreślenia. Znak podkreślenia będzie oznacza nie odgadnioną jeszcze literę.  Hasło powinno być przechowywane w zmiennej.

**3. Sprawdzanie czy litera występuje w słowie.**
Wykorzystaj metodę *include?* aby sprawdzić, czy podana przez gracza litera, znajduje się w szukanym haśle.

**4. Odsłona wszystkich znalezionych wystąpień litery**
Przy pomocy metody *each_witch_index*, zamień w tablicy zakrytych liter, znak podkreślenia na znalezioną literę. 
Zmienna *index* wskazuje odpowiednie miejsce w tablicy zakrytych znaków.

**Uwaga:** w programie wykorzystamy 2 tablice. Pierwsza zawiera hasło, natomiast druga: litery poprawnie wskazane przez gracza.

Ilustracja przedstawia taką zamianę dla hasła „code” i podania litery „d”.

![arrays each_with_index](http://cloud.github.com/downloads/mokrzu/code-basics-pl/array.png)

**5.  Dodanie pętli.**
Przenieś powtarzającą się część kodu, do pętli **while**.  Jak łatwo zauważyć, w programie powtarza się pobieranie litery od użytkownika, sprawdzenie czy występuje ona w haśle oraz odsłonięcie pozycji na których się znajduje. 
Pętla powinna zostać przerwana gdy użytkownik zgadnie wszystkie literty.

**6.  Zliczanie niepoprawnych odpowiedzi.**
Zadeklaruj zmienną, której wartość będzie maleć z każdą niepoprawną odpowiedzią.
Dodaj w pętli warunek, który sprawdza czy użytkownik ma jeszcze prawo zgadywać. Jeżeli jego próby zostały wykorzystane. Pętla powinna zostać przerwana.
Po zakończeniu pętli, użytkownik uzyskuje informacje na temat swojego wyniku: wygrana/przegrana.

**Koniec;)**

---

## Wymagane struktury oraz metody.

### Struktura tablicy.

Tablica jest uporządkowanym zbiorem elementów.
Każdy element posiada unikalny dla niego adres w tablicy (index).
Dzięki temu możemy mieć bezpośredni dostęp do każdego elementu tablicy.

*Numeracja indeksów w tablicach, zawsze zaczyna się od zera.*

![array structure](http://cloud.github.com/downloads/mokrzu/code-basics-pl/array_index.jpg)


### Przykłady pracy z tablicami i napisami.
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
### Jednoczesna iteracja po dwóch tablicach.

Możemy wykonać taką iterację, np. wykorzystując iterator each_with_index.
Pierwszy argument to element pierwszej tablicy, natomiast odpowiadający mu element drugiej tablicy, 
uzyskamy dzięki wyrażeniu *druga_tablica[index]*.

Przykładowy program:
```ruby
first = ["one", "two", "three", "four"]
second = [1, 2, 3, 4]

first.each_with_index do |element, index|
    second[index] = element + " = " + second[index].to_s
end

second.each {|elem| puts elem}
```
Wyjście:
```text
one = 1
two = 2
three = 3
four = 4
```
---

## Rozwiązania problemów.

### Nazwy zmiennych.
Tworzenie opisowych i zrozumiałych nazw dla zmiennych, bardzo ułatwia pisanie kodu.  
A także znacznie poprawia jego czytelność oraz zrozumiałość.

**ZŁY styl nazewnictwa.**
```ruby
x = 4
h = "panda"
underscores = ["_","_","_"]
```

**DOBRY styl nazewnictwa** lub przynajmniej lepszy niż wyżej.
```ruby
allowedMistakes = 4
password = "panda"
guessedLetters = ["_","_","_"]
```

### Odsłona  wszystkich wystąpień litery.
Prawdopodobnie ten fragment zadania sprawia najwięcej trudności. 
Główne wyzwanie to zrozumienie działania metody **each_with_index**.  

Próba wyjaśnienia jej działania została przedstawiona w sekcji: *Jednoczesna iteracja po dwóch tablicach*. 
W danym przykładzie widzimy jak przechodząc po elementach pierwszej tablicy (**element** z tablicy **first**) mamy dostęp, 
do odpowiadającego mu elementu pod względem kolejności, w drugiej tablicy (**second[index]** z tablicy **second**).  

Co oznacza zmienna *index*? Pozycję elementu (*element*) w tablicy po której iterujemy. 

> Iteracja – przejście po kolejnych elementach tablicy.

> Iterator – metoda przechodząca po elementach tablicy. (wykonująca iterację) Np. ‘each’ lub 'map'


Wracając do naszego zadania, *hasłem* nazwijmy słowo do odgadnięcia.
Na początku programu tworzymy tablicę zawierającą znaki podkreślenia, np. **guessedLetters**. Oznaczają one nieodgadnięte poprzez gracza litery hasła.

Gdy już sprawdziliśmy, że litera znajduje się w słowie do odgadnięcia i chcemy odsłonić wszystkie pozycje w tablicy, która służy do wyświetlania graczowi liter które zgadł, wykonujemy następującą operację: 

Iterując po kolejnych literach hasła, sprawdzamy czy dana litera jest identyczna z literą podaną przez użytkownika. Gdy ten warunek jest spełniony, zamieniamy znak podkreślenia na właściwą literę.

```ruby
guessedLetters[index] = characterFromPlayer
```
**Uwaga:** iteratory, w tym *each_with_index*, działają na tablicach. Należy więc przed zastosowaniem ich na haśle, zamienić napis na tablicę. W tym celu stosujemy metodę *split("")*.

### Instrukcje warunkowe  i pętla while.
Budowa prostej instrukcji warunkowej:

```ruby
if warunek
    # kod wykonany gdy warunek jest spełniony
end
```
Budowa instrukcji warunkowej z przypadkiem alternatywnym:
```ruby
if warunek
    # kod wykonany gdy warunek jest spełniony
else 
  # kod wykonany gdy warunek jest niespełniony
end
```
W pętli **while** określamy warunek, mówiący czy blok kodu umieszczony w tej pętli, powinien być wykonany jeszcze raz.

> Blok kodu – część kodu umieszczona pomiędzy instrukcją sterującą lub warunkową (if, while, each itd.) a słowem kluczowym  *end*.

> Słowo kluczowe – wyraz zarezerwowany przez język programowania. Nie możemy tworzyć zmiennych o nazwach takich jak słowa kluczowe (else, if, for, gets itp.)

Warunek może łączyć z sobą kilka logicznych sformułowań, przy pomocy słów *and* i *or*.
```ruby
while lettersToGuess > 0 and allowedMistakes > 0
    # blok kodu wykonany gdy oba warunki są spełnione.
end
```

### Zmniejszanie wartości zmiennej.

Aby zmniejszyć wartość zmiennej, o pożądaną liczbę, przypisujemy do niej jej *starą* wartość, odpowiednio zmniejszoną.
```ruby
# odejmujemy od zmiennej 1
allowedMistakes = allowedMistakes  –  1
```

Skrócony zapis:
```ruby 
allowedMistakes -= 1
```


---

## Linki do dokumentacji.

TODO

---

## Zgłaszanie problemów i uwag.

Tymczasowo, uwagi oraz problemy można zgłaszać, przez opcję [Issues](https://github.com/mokrzu/code-basics-pl/issues) na Github
lub bezpośrednio do mnie - Łukasz.
