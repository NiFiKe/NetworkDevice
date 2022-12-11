<?php
// variables / változók
require("variable.php");

// visszakapott adatok feldolgozása soronként és elhelyezésük a megjelenítéshez szükséges tömbökben
while($row = $r->fetch_assoc()){
				// az eszköz nevének tárolása a session tömbben a visszairatáshoz, ha lefut a kód
				$_SESSION["dev"] = $row["dev_name"];
				
				// eszköz megjelenítéséhez szükséges adatbázis adat tárolás
				$showDev = $row["sh"];
				
				// eszköz nevének eltárolása az $devName változóba
				$devName = $row["dev_name"];
					//read leds names from receive data rows / ledek neveinek eltárolása az adatbázisból a tömbbe
					// ha a led_name nem egyenlő a sorban jövő $row["leds_name"] értékével
					if($led_name[$ind] != $row["leds_name"]){
					//akkor a led_name tömb tömbindexe egyel novekszik és az új tömindexű tömb változó kapja  a led nevet	
					$led_name[++$ind] = $row["leds_name"];
					//column span / hány oszlopot kell áthidalnia a led neve értéknek a táblázatban az adatbázisból kapott sorok számát felhasználva
					if($ind > 0)
					// nullázza a $cr tömb értékét			
						$cr[$cri++]=$c_row;
					//növeli a változót egyre, hogy a következő ciklusban már az else ágba kerüljön, hogy az oszlopok száma növekedjen a táblázatban az adatbázisból kapott sorok számát felhasználva
						$c_row=1;
					}
					else{
						
						$c_row++;
					}
					// a led állapotot tartalmazó tömbbe bekerül az adatbázisból kiolvasott érték
					$led_mark[$lma++] = $row["led_state"];
					// a led jelentését tartalmazó tömbbe bekerül az adatbázisból kiolvasott érték
					$led_meaning[$lme++] = $row["led_meaning"];
					
					//last column span auxiliary variable: $cr_sum
			/*for($c=0;$c<count($led_name)-2;$c++){
				$cr_sum += $cr[$c];// nope test loop :
			}*/
		}
		
		//echo $r->num_rows . "   " . $cr_sum;
			//last column span for tables / az utolsó oszlop áthidalás kiszámítása táblázatban az adatbázisból kapott sorokból kiszámítva
			// az összes sorok számából kivonjuk az  eddig feldolgozott sorokat

			$cr[$cri]=$r->num_rows - $cr_sum;
				
?>