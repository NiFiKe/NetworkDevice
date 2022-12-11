<?php
	class database{
		
		private $servername;
		private $dbname;
		private $username;
		private $password;
		private $dbconn;
		
		
		
		function __construct($sn,$un,$pw,$dn){
				$this->servername=$sn;
				$this->dbname=$dn;
				$this->username=$un;
				$this->password=$pw;
		}

		function connect(){	
			$this->dbconn = new mysqli($this->servername, $this->username,$this->password,$this->dbname);
			
			if($this->dbconn->connect_error){
				die("Connection failed: " . $this->dbconn->connect_error);
			}
			//echo"Connecton successful!<br>";
			return $this->dbconn;
		}
		
		/*function __destruct(){
			echo "Zárunk";
			$dbconn->close();
		}*/
		
		function db_query($sqlq){
			$result=$this->dbconn->query($sqlq);
			return $result;
		}
		
		function dbworked($r){
			while($row = $r->fetch_assoc()){
				
				$devName = $row["dev_name"];
					//read leds names from receive data rows
					if($led_name[$ind] != $row["leds_name"]){
					$led_name[++$ind] = $row["leds_name"];
					//column span 
					if($ind > 0)		
						$cr[$cri++]=$c_row;
					
					$c_row=1;
					}
					else{
						$c_row++;
					}
					
					$led_mark[$lma++] = $row["led_state"];
					$led_meaning[$lme++] = $row["led_meaning"];
					
					//last column span auxiliary variable: $cr_sum
			for($c=0;$c<count($led_name)-2;$c++){
				$cr_sum += $cr[$c];// nope test loop :
			}
			//last column span for tables 
			$cr[$cri]=$c_row + ($r->num_rows - $cr_sum);

				}
		}
	}
?>