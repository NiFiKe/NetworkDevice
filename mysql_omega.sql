-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Gép: mysql.omega:3306
-- Létrehozás ideje: 2022. Nov. 12. 00:07
-- Kiszolgáló verziója: 5.7.33-log
-- PHP verzió: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `device`
--
CREATE DATABASE IF NOT EXISTS `device` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `device`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `device`
--

CREATE TABLE `device` (
  `id` int(11) NOT NULL,
  `dev_name` varchar(100) NOT NULL,
  `sh` int(11) DEFAULT NULL,
  `dev_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `device`
--

INSERT INTO `device` (`id`, `dev_name`, `sh`, `dev_type`) VALUES
(1, 'CISCO892FSP', 1, 1),
(2, 'CISCO1111-8p', 1, 1),
(3, 'CISCO-DPC3925', 2, 3),
(4, 'SPEEDPORT-W724V-CI', 3, 3),
(5, 'ARUBA-APIN0207', 3, 4),
(6, 'HUAWEI-AP4050DN-HD', 3, 4),
(7, 'CISCO-CATALYST-2950', 1, 2);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `leds`
--

CREATE TABLE `leds` (
  `id` int(11) NOT NULL,
  `leds_name` varchar(30) DEFAULT NULL,
  `led_meaning` varchar(255) DEFAULT NULL,
  `leds_id` int(11) DEFAULT NULL,
  `led_place` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `leds`
--

INSERT INTO `leds` (`id`, `leds_name`, `led_meaning`, `leds_id`, `led_place`) VALUES
(1, 'OK', 'A router tápellátást kap', 1, 'f'),
(1, 'OK', 'A router nem kap tápellátást', 2, 'f'),
(1, 'OK', 'A router bootol', 3, 'f'),
(1, 'GE8, SFP8, GE9', 'A GE port kapcsolódik, de nincs forgalom', 1, 'f'),
(1, 'GE8, SFP8, GE9', 'A Lan port nem kapcsolódik', 2, 'f'),
(1, 'GE8, SFP8, GE9', 'A GE porton forgalom van', 3, 'f'),
(1, 'VPN', 'Legalább egy tunnel felépült', 1, 'f'),
(1, 'VPN', 'Nincs tunnel felépítve', 2, 'f'),
(1, 'PPP', 'Van internet kapcsolat', 1, 'f'),
(1, 'PPP', 'Nincs internet kapcsolat', 2, 'f'),
(1, 'GE Lan 0 - 7', 'A Lan port kapcsolódik, de nincs forgalom', 1, 'f'),
(1, 'GE Lan 0 - 7', 'A Lan port nem kapcsolódik', 2, 'f'),
(1, 'GE Lan 0 - 7', 'A Lan porton forgalom van', 3, 'f'),
(2, 'STATUS', 'A rendszer normálisan működik', 1, 'f'),
(2, 'STATUS', 'A rendszer nem áll vissza, vagy a BIOS kép nem tölthető be', 2, 'f'),
(2, 'STATUS', 'BIOS/Rommon bootol', 4, 'f'),
(2, 'STATUS', 'BIOS / Rommon befejezte az indítást, és a rendszer a Rommon parancssorban van, vagy indítja a platform szoftvert', 5, 'f'),
(2, 'VPN', 'Nincs tunnel felépítve', 2, 'f'),
(2, 'VPN', 'Legalább egy tunnel felépült', 1, 'f'),
(2, 'WLAN', 'Normál működés legalább egy vezetéknélküli kapcsolattal', 6, 'f'),
(2, 'WLAN', 'Ethernet kapcsolat nem működik vagy Etherhnet hiba', 7, 'f'),
(2, 'WLAN', 'Szoftverfrissítés folyamatban van', 8, 'f'),
(2, 'CISCO logo', 'A világító előlapi Cisco logo jelzi, hogy a router teljesítménye jó', 9, 'f'),
(2, 'GE LAN Ports:0-7 PoE nélkül', 'Nincs kapcsolat', 2, 'b'),
(2, 'GE LAN Ports:0-7 PoE nélkül', 'Van kapcsolat', 1, 'b'),
(2, 'GE LAN Ports:0-7 PoE nélkül', 'Adatforgalom van a porton', 3, 'b'),
(2, 'GE LAN Ports:0-7 PoE-val', 'Nincs kapcsolat, nincs eszköz áramellátás, POE letiltva', 2, 'b'),
(2, 'GE LAN Ports:0-7 PoE-val', 'Kapcsolat van a porton, POE-s eszköz, a táp ellátás engedélyezve van', 1, 'b'),
(2, 'GE LAN Ports:0-7 PoE-val', 'Adatforgalom van a porton', 3, 'b'),
(2, 'GE LAN Ports:0-7 PoE-val', 'POE hiba', 5, 'b'),
(2, 'GE WAN Portok', 'Nincs kapcsolat', 2, 'b'),
(2, 'GE WAN Portok', 'Van kapcsolat', 1, 'b'),
(2, 'GE WAN Portok', 'Adatforgalom van a porton', 3, 'b'),
(2, 'Console/AUX', 'Konzol engedélyezve', 6, 'b'),
(2, 'Console/AUX', 'AUX engedélyezve', 8, 'b'),
(2, 'USB konzol / USB', 'Nem található USB eszköz', 2, 'b'),
(2, 'USB konzol / USB', 'Felismert USB eszköz', 6, 'b'),
(3, 'POWER', 'A vezeték nélküli helyi átjáró áramot kap ', 1, 'f'),
(3, 'DS/US', 'A vezeték nélküli helyi átjáró adatokat fogad/küld a kábeles hálózaton', 1, 'f'),
(3, 'ONLINE', 'A vezeték nélküli helyi átjáró be van jegyezve a hálózatba és teljesen működésképes', 1, 'f'),
(3, 'ETHERNET 1 -4', 'Eszköz csatlakozik az egyik Ethernet-porthoz', 1, 'f'),
(3, 'ETHERNET 1 -4', 'Adatátvitel van folyamatban az Ethernet-kapcsolaton keresztül', 3, 'f'),
(3, 'USB', 'Eszköz csatlakozik az USB porthoz', 1, 'f'),
(3, 'USB', 'Adatátvitel van folyamatban az USB-kapcsolaton keresztül', 3, 'f'),
(3, 'WIRELESS LINK', 'Működőképes a vezeték nélküli hozzáférési pont', 1, 'f'),
(3, 'WIRELESS LINK', 'Adatátvitel van folyamatban a vezeték nélküli kapcsolaton keresztül', 3, 'f'),
(3, 'WIRELESS LINK', 'A felhasználó letiltotta a vezeték nélküli hozzáférési pontot', 2, 'f'),
(3, 'WIRELESS SETUP', 'A felhasználó bekapcsolta a vezeték nélküli hálózati kapcsolat beállítása funkciót', 3, 'f'),
(3, 'WIRELESS SETUP', 'Nem aktív a vezeték nélküli hálózati kapcsolat beállítása funkció', 2, 'f'),
(3, 'TEL1 / TEL2', 'Vonal használatban van', 3, 'f'),
(4, 'Power', 'Tápfeszültség kikapcsolva', 2, 'f'),
(4, 'Power', 'A digitális elosztó meghibásosodott', 11, 'f'),
(4, 'Power', 'Tápfeszültség bekapcsolva', 10, 'f'),
(4, 'DSL', 'Nincs DSL kapcsolat', 2, 'f'),
(4, 'DSL', 'DSL kapcsolat felépítése folyamatban', 11, 'f'),
(4, 'DSL', 'DSL kapcsolat létrejött', 10, 'f'),
(4, 'Online', 'Nincs internet kapcsolat', 2, 'f'),
(4, 'Online', 'Internet kapcsolat felépült', 10, 'f'),
(4, 'Telephony', 'Nincs VoiP kapcsolat', 2, 'f'),
(4, 'Telephony', 'VoIP kapcsolat aktiválva', 10, 'f'),
(4, 'Service', 'Szolgáltatás nyújtásához kapcsolódó folyamat zajlik. Várja meg, amíg a led kialszik!', 10, 'f'),
(4, 'WLAN', 'Be/kikapcsolja a Wlan-t', 12, 'f'),
(4, 'WLAN', 'Wlan kikapcsolva', 2, 'f'),
(4, 'WLAN', 'Wlan eszköz regisztráció folyamatban (WPS).', 11, 'f'),
(4, 'WLAN', 'Wlan interfész működőképes', 10, 'f'),
(5, 'System status (Left led)', 'Az eszköz ki van kapcsolva', 2, 'f'),
(5, 'System status (Left led)', 'Az eszköz bootol, még nincs kész a használatra', 3, 'f'),
(5, 'System status (Left led)', 'Az eszköz kész a használatra', 1, 'f'),
(5, 'System status (Left led)', 'Hibás eszköz állapot', 13, 'f'),
(5, 'Radio status (Right led)', 'Az eszköz ki van kapcsolva vagy mind a két wifi eszköz le van tiltva', 2, 'f'),
(5, 'Radio status (Right led)', 'A wifi eszközök engedélyezve vannak hozzáférési módban', 1, 'f'),
(5, 'Radio status (Right led)', 'Egy wifi eszköz engedélyezve van  hozzáférési módban', 3, 'f'),
(5, 'Radio status (Right led)', 'Mind két wifi eszköz engedélyezve van monitor módban', 5, 'f'),
(5, 'Radio status (Right led)', 'Egy wifi eszköz engedélyezve van monitor módban', 4, 'f'),
(5, 'Váltakozó', 'Egy wifi eszköz hozzáférési módban', 6, 'f'),
(5, 'Váltakozó', 'Egy wifi eszköz monitor módban', 8, 'f'),
(6, 'Indicator led', 'Alapértelmezett bekapcsolás utáni állapot:Az ap be van kapcsolva, de a vezérlő program nem indult el még. ', 1, 'f'),
(6, 'Indicator led', 'Rendszer újraindítás után és a szoftver betöltésének megkezdésekor villan egyet. A szoftver feltöltődéséig és elindulásáig folyamatosan zöld. ', 14, 'f'),
(6, 'Indicator led', 'A rendszer megfelelően működik, Ethernet kapcsolat rendben, az AP-hoz társított eszközök csatlakoznak', 15, 'f'),
(6, 'Indicator led', 'A rendszer megfelelően működik, Ethernet kapcsolat rendben, az AP-hoz társított eszközök nem csatlakoznak. A rendszer alacsony energia felhasználási állapotban van.', 16, 'f'),
(6, 'Indicator led', 'A szoftver frissítése folyamatban van <br>A szoftver beltöltése és elindulása után az AP kérést küld online a kontrollernek és fent tartja ezt az állapotot addig amíg sikeresen csatlakozni tud rá<br>Az eszköz nem csatlakozik a kontrollerhez', 17, 'f'),
(6, 'Indicator led', 'Az AP működését befolyásoló hiba. A hiba automatikusan nem jön helyre, manuális beavatkozás szükséges.', 13, 'f'),
(7, 'System LED', 'A rendszer nem kap áramot', 2, 'f'),
(7, 'System LED', 'A rendszer normálisan működik', 6, 'f'),
(7, 'System LED', 'A rendszer áramot kap, de nem működik megfelelően', 8, 'f'),
(7, 'RPS (Redundant Power System)', 'RPS ki van kapcsolva vagy nincs telepítve', 2, 'f'),
(7, 'RPS (Redundant Power System)', 'RPS csatlakoztatva és kész a tartalék tápellátásra', 1, 'f'),
(7, 'RPS (Redundant Power System)', 'Az RPS csatlakoztatva van, de nem érhető el, mert egy másik eszköz számára szolgáltat energiát', 3, 'f'),
(7, 'RPS (Redundant Power System)', 'Az RPS készenléti vagy hibás állapotban van', 5, 'f'),
(7, 'RPS (Redundant Power System)', 'A switch saját tápellátása meghíbásodott, RPS-en keresztül kap tápellátást', 4, 'f'),
(7, 'Port mode STAT (port status)', 'Nincs kapcsolat', 2, 'f'),
(7, 'Port mode STAT (port status)', 'A porton kapcsolat van', 1, 'f'),
(7, 'Port mode STAT (port status)', 'A port adatokat küld / fogad', 3, 'f'),
(7, 'Port mode STAT (port status)', 'Kapcsolat hiba', 18, 'f'),
(7, 'Port mode STAT (port status)', 'A port adatot nem továbbít. (Valószínű a vezérlés letiltotta)', 5, 'f');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `leds_state`
--

CREATE TABLE `leds_state` (
  `leds_id` int(11) NOT NULL,
  `led_state` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- A tábla adatainak kiíratása `leds_state`
--

INSERT INTO `leds_state` (`leds_id`, `led_state`) VALUES
(1, 'Folyamatos zöld'),
(0, NULL),
(2, 'Nem világít'),
(3, 'Villogó zöld'),
(4, 'Villogó borostyánsárga'),
(5, 'Folyamatos borostyánsárga'),
(6, 'Zöld'),
(7, 'Vörös'),
(8, 'Borostyánsárga'),
(9, 'Kék'),
(10, 'Világít'),
(11, 'Villog'),
(12, 'Nyomógomb'),
(13, 'Folyamatos vörös'),
(14, 'Egy villanás után folyamatosan zöld'),
(15, 'Villan egyet 2 másodpercenként zölden'),
(16, 'Villan egyet 5 másodpercenként zölden'),
(17, 'Villan négyet 1 másodpercenként zölden.(Riasztás)'),
(18, 'Váltakozva zöld / borostyánsárga');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `device`
--
ALTER TABLE `device`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `device`
--
ALTER TABLE `device`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
