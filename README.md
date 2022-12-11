# NetworkDevice

A HTML5 tantárgy teljesítéséhez feltöltött fájlok.

A weboldal különböző hálózati eszközök led állapot leírásának megjelenítésére szolgál. Érdekessége, hogy az oldalak nem statikusan vannak megadva, hanem php
programozási nyelv által írd kód generálja le azokat mySQL adatbázisból történő lekérdezéssel.

A weboldal elkészítéséhez felhasznált technológiák: HTML5, PHP, mySQL.

A weboldal fájljainak leírása
  - nd.html // a nyitó oldalnak felel meg (index.html) de mivel nem kezdő oldalként került megvalósításra ez lett a neve. Ez a belépő oldal, ahol a 
    felület alapálapotban fogadja a felhasználót, itt található a beviteli mező és a megjelenítési felület is
  - index.css // az oldal megjelenítési beállításait tartalmazza
  - reset.css // a css beállításokat alapállapotba állítja - nem lett felhasználva
  
  - req könyvtár fájljai a működéshez szükésges php fájlokat tartalmazza
    - worked.php  ---  az SQL lekérdezésből kapott adatok feldolgozása soronként és elhelyezésük a megjelenítéshez szükséges tömbökben
    - variable.php  ---  a weboldal működéséhez szükséges változók deklarálása
    - t.php  ---  tábla fejlécek és sorcímek létrehozása
    - show.php  ---  a kiválasztott eszközök képének megjelenítéséért felel
    - my_type.oho  ---  az nd.php oldalon levő lenyilómezőt tölti fel adatokkal a mySQL adatbázisból, illetve html tageket is elhelyez a tagoláshoz
    - db.php  ---  led állapot adatokat olvas be és helyez a megfelelő tömbbe illetve meg is számolja azokat
    
  - images mappa  ---  a mejelenítendő eszközök képeit tartalmazó mappa
  - user_manuals  ---  az eszközökhöz tartozó felhasználói kézikönyveket tartalmazza. Ez lehetne online is, de mivel lehetséges, hogy a programot offline használják így
    olyankor is megvannak. Persze lehetne kettós linekelés is.
  
  - mysql_omega.sql  ---  a szükséges mysql adatbázis léterhozásához szükséges utasításokat tartalmazza.


