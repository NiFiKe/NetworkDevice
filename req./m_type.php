<?php

	//connect to db /csatlakozás az adatbázishoz
	$conn = @mysqli_connect('sql1.pws.niif.hu:3306','dh-l1teszt','jpTWAtks4s','dh-l1teszt');

	$dev_type_code = 0;
	
	//check to connection / csatlakozás sikerességének ellenőrzése
	if (!$conn) {
		die("Connection failed: " . mysqli_connect_error());
		echo mysql_errno($conn). ":" . mysql_error($conn);
	}

	//mysql querry	/ lekérdezés az adatbázisból: az eszközök neve  a device táblából	
	$sql="SELECT device.dev_name, device.dev_type from device order by device.dev_type";
	
	// data get from db /  az elérhető eszközök listába iratása az adatbázisból		
	if($result=mysqli_query($conn, $sql)){
		// prev selected devie name in first line on the select tag
		
		echo "<option value=\"" .$_SESSION["dev"] . "\">" . $_SESSION["dev"] . "</option>";
		
		while($row=mysqli_fetch_assoc($result)){
			
			if($dev_type_code != $row["dev_type"] ){
				if($dev_type_code >= 1)
					echo "</optgroup>";
				
				switch ($row["dev_type"]){
					case 1 : echo "<optgroup label=\"Routerek\">";
								break;
					case 2 : echo "<optgroup label=\"Switchek\">";
								break;
					case 3 : echo "<optgroup label=\"Modemek\">";
								break;
					case 4 : echo "<optgroup label=\"AP-k\">";
								break;					
				}
				
				$dev_type_code = $row["dev_type"];
			}	
				echo "<option  value=\"" . $row["dev_name"] . "\">"  . $row["dev_name"] . "</option>" ;
			
		}
		echo "</optgroup>";
	}
	// close databasr / adatbázis kapcsolat zárása
	mysqli_close($conn); 
?>