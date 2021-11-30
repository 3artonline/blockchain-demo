# Blockchain Demo
To jest fork kodu -  anders94/blockchain-demo
Czyli przykładowy dashboard pokazujący funkcjonowanie podstaw technologii blockchain.
Internetowa demonstracja koncepcji blockchain.

Jest to bardzo podstawowy wizualny wstęp do koncepcji kryjących się za blockchainem. Wprowadzenie do 
pojęcia rozproszonego rejestru za pomocą interaktywnego dema internetowego

## Setup
ściągnij kod:

```
git clone https://github.com/3artonline/blockchain-demo.git
```

Zainstaluj wymagane biblioteki:

```
cd blockchain-demo
npm install
```
uruchom serwer www:

```
npm start
```

lub

```
./bin/www
```
## Windows, jeśli powyższe polecenie nie zadziałało - uruchom poniższe i psrawdz czy zainstalowałeś NodeJS

```
node ./bin/www      
```

Uruchom poniższy adres w przeglądarce:

```
http://localhost:3000
```

## Konfiguracja w Docker

Get the code:

```
git clone https://github.com/3artonline/blockchain-demo.git
```

Docker setup:

```
cd blockchain-demo
docker-compose up -d
```

Uruchom poniższy adres w przeglądarce:

```
http://localhost:3000
```

## Konfiguracja opcjonalna
Możesz dostosować "liczbę zer" wymaganą przez demo, edytując dwie pierwsze linie
`public/javascripts/blockchain.js`.

Ponieważ istnieje 16 znaków możliwych w wartości heksadecymalnej, za każdym razem, gdy zwiększasz trudność
o jeden, sprawiasz, że łamigłówka jest 16 razy trudniejsza. W moich testach, trudność na poziomie 6 wymaga
maxNonce znacznie powyżej 500,000,000.

Jeśli ustawisz poziom trudności powyżej 4, bloki będą pokazywane jako nie wydobyte, ponieważ dane demo
zakładają 4 zera dla podpisanego bloku. Na przykład, na stronie `http://localhost:3000/block`
o trudności 6, pierwszy działający wynik to `8719932` dający hash o wartości
`000000669445c22167511857d8f3b822b331c3342f25dfdcb326e35c1a7aa267`. To dość szybko wymyka się spod kontroli. Oto kilka szacunków czasu przy różnych progach.


|liczby|trudność|czas obliczeń|
|------|-------|-------------|
|4|500,000|15 minut
|5|8,000,000|4 godziny
|6|128,000,000|3 dni
|7|2,048,000,000|miesiąc
|8|32,768,000,000|2 lata
|9|524,288,000,000|30 lat
|10|8,388,608,000,000|481 lat
|11|134,217,728,000,000|7,690 lat
|12|2,147,483,648,000,000|123,036 lat
|13|34,359,738,368,000,000|1,968,581 lat
|14|549,755,813,888,000,000|31,497,291 lat
|15|8,796,093,022,208,000,000|503,956,662 lat

W prawdziwym łańcuchu bloków Bitcoin, blok `458,091` ma hash
`00000000000000000000011246f099d94f91628d71c9d75ad2f9a06e2beb7e92`. To 21 zer pod rząd!
Wykopanie tego jednego bloku zajmie naszemu oprogramowaniu demo około 8,454,989,768,407,765 lat.

### Publiczny i Prywatny klucz - demo, czyli kolejna część tego wykładu jest dostępna pod adresem:

* https://github.com/3artonline/public-private-key-demo

# Podziękowania i referencje należą sie Andersowi Brownworth, który stowrzył kod tutaj przetłumaczony na Polski

