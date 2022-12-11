<?php
echo "<div id=\"tables\">
					<table>
							<tr>
								<th>Ledek megnevezése</th>";
								for($i=0;$i < count($cr); $i++){
									echo "<td colspan=\"" . $cr[$i] . "\">$led_name[$i]</td>";
								}
								
					echo "</tr>
							<tr>
								<th>Led állapota</th>";
								
								for($i=0; $i < count($led_mark); $i++){		
								echo "<td>" . $led_mark[$i] . "</td>";
								}
									
							echo "</tr>
								<tr>
									<th>Led állapot jelentése</th>";
								
								for($i=0; $i < count($led_meaning);$i++){
									echo "<th>" . $led_meaning[$i]. "</th>";
								}	
								
					echo	"</tr>
							
						</table>
					</div>	";
?>					