<?php
	session_start();
	if(isset($_POST["devices"]))
		$_SESSION["dev"]= $_POST["devices"];
?>
<!--- HTML --->
<!DOCTYPE html>

<html lang="hu">
	<head>
		<meta charset="utf-8">
		<title>NetworkDevices</title>
		<link rel="stylesheet" href="index.css">
		
		 
		
		
		<script type="text/javascript">
			function test(){
				document.getElementById("test").innerHTML="Mukod!";
			}
		</script>
		
	
    
	</head>
	
	<body>
		<div id="wrapper" >
		
			<form action="<?php echo htmlspecialchars("nd.php");?>" method="POST">
					
						<select  id="devices" name="devices" placeholder="Válaszd ki a keresett eszközt!"> 
						
						<!-- get modem types from database-->
						<?php
							require("req/m_type.php");
						?>
						</select>		
						
					<input type="submit" value="Kiválaszt">	
					<p>Az eszközről az alábbi információk részlegesek és tájékoztató jellegűek.<br>Amennyiben további adatokra van szüksége, kérem kattintson a lap alján található "[Eszköz neve] felhasználói kézikönyv" gombra.<br>Itt további ismeretekhez juthat magyar vagy angol nyelven, ".pdf" formátumban.</p>
				</form>
			</div>
				
				
<?php
	if(isset($_POST["devices"])&& $_POST["devices"]!=""){
		require("req/db.php");
		
		require("req/show.php");
		$f="f";
		$b="b";
		
		$db = new database("sql1.pws.niif.hu:3306","dh-l1teszt","jpTWAtks4s","dh-l1teszt");
		
		$db->connect();

		$db->db_query("SET NAMES 'UTF8'");  // �kezetes bet�k helyes megjelen�t�se miatt
    		$db->db_query("SET CHARACTER SET UTF8"); // �kezetes bet�k helyes megjelen�t�se miatt

		
		$query = "SELECT device.dev_name, device.sh, leds.leds_name,leds.led_meaning,leds.leds_id,leds.led_place, leds_state.led_state from  leds, leds_state, device where device.id=leds.id AND leds.leds_id=leds_state.leds_id and leds.led_place='". $f ."' AND device.dev_name='" . $_POST["devices"] . "'"; 
		
		try{
		$r = $db->db_query($query);
		
		}catch(Exception $e){
			echo "Error:" . $e->error_Message;
		}
		

		$flag=0;
		if($r->num_rows != 0){
		
			$flag=1;
			
				
			require("req/worked.php");
			
			deviceNameHTML($devName);
			
			switch($showDev){
				case 1 : deviceFrontImagesHtml($devName);
						break;
				case 2 : deviceFrontImagesHtml78($devName);
						break;
				case 3 : deviceFrontImagesHtml50($devName);
						break;
			}
			
			
			
			require("req/t.php");
		}
			
			if($flag==1){
				switch($showDev){
				case 1 : deviceBackImagesHtml($devName);
						break;
				case 2 : deviceBackImagesHtml78($devName);
						break;
				case 3 : deviceBackImagesHtml50($devName);
						break;		
				}
			}
				
	$querry = "SELECT device.dev_name,device.sh, leds.leds_name,leds.led_meaning,leds.leds_id,leds.led_place, leds_state.led_state from  leds, leds_state, device where device.id=leds.id AND leds.leds_id=leds_state.leds_id and leds.led_place='". $b ."' AND device.dev_name='" . $_POST["devices"] . "'"; 
					
					try{
						$r = $db->db_query($querry);
						
						}catch(Exception $e){
							echo "Error:" . $e->error_Message;
						}
						
						
		if($r->num_rows != 0){
		

			require("req/worked.php");
			require("req/t.php");
			
		}		
	}		
		
	linkUserManual($devName);
	
	
?>				
				
		</div>
		<?php footer(); ?>
	</body>
</html>	