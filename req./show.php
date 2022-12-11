<?php
	// html page headline 
	function buildHtml(){
		echo "<!DOCTYPE html>";
		echo "\n<html lang=\"hu\">";
		buildHeader();
	}
	// html head tag
	function buildHeader(){
		echo "
			<head>			
				<meta charset=\"UTF-8\">	
				<link rel=\"stylesheet\" href=\"index.css\">
				
			</head>
			<body>
			";
	}
	
	// front side image of device to html = width 100%
	function deviceFrontImagesHtml($deviceName){
		echo "<h3>Előlap</h3>";
		echo "<div id=\"images\">";
		echo "<img src=\"images/" . $deviceName . "_front.jpg\">";
		echo "</div>";
	}
	
	// back side image of device to html width = 100%
	function deviceBackImagesHtml($deviceName){
		echo "<h3>Hátlap</h3>";
		echo "<div id=\"images\">";
		echo '<img src="images/' . $deviceName . '_back.jpg">';
		echo "</div>";
	}
	
	// back side image of device to html width = 60%
	function deviceFrontImagesHtml78($deviceName){
		echo "<h3 >Előlap</h3>";
		echo "<div id=\"images78\">";
		echo '<img src="images/' . $deviceName . '_front.jpg">';
		echo "</div>";
	}
	
	// back side image of device to html width = 60%
	function deviceBackImagesHtml78($deviceName){
		echo "<h3  >Hátlap</h3>";
		echo "<div id=\"images78\">";
		echo '<img src="images/' . $deviceName . '_back.jpg">';
		echo "</div>";
	}
	
	// back side image of device to html width = 30%
	function deviceFrontImagesHtml50($deviceName){
		echo "<h3 >Előlap</h3>";
		echo "<div id=\"images50\">";
		echo '<img src="images/' . $deviceName . '_front.jpg">';
		echo "</div>";
	}
	
	// back side image of device to html width = 30%
	function deviceBackImagesHtml50($deviceName){
		echo "<h3  >Hátlap</h3>";
		echo "<div id=\"images50\">";
		echo '<img src="images/' . $deviceName . '_back.jpg">';
		echo "</div>";
	}
	
	// prints on web page the current device name
	function deviceNameHtml($deviceName){
		echo "<h1>" . $deviceName . "</h1>";
	}
	
	//user manual link
	function linkUserManual($deviceName){
		echo "<div id=\"umlink\" name=\"umlink\">";
		
		echo "<a href=\"user_manuals/" .  $deviceName . ".pdf\"  target=\"_blank\">" . $deviceName . " felhasználói kézikönyv </a>";
		
		echo "</dev>";
		
	}
	
	//footer
	
	function footer(){
		
			echo "<div id=\"foot\">
					<footer>
						<small>&copy; Copyright 2019, NiFi Software</small>
					</footer>
				</div>";
	}
	
	
	
/* 
*/
?>