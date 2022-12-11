<?php

	/*unset($data_array,$ind,$led_name[$ind],$row,$td_size,$c_row,$td_size,$c_row,$cr,$cri,$cr_sum,$leds_mark,$leds_meaning,$lma,$lme,$lmab,$lmeb);*/
	
	//array_received db datas / tömb az adatok tárolására az adatbázisból
	$data_array;
	//index of led_name /led_name tömb index
	$ind = -1;
	//array leds name / led_name tömb
	$led_name[$ind]=null;
	//test variable prints the databse datas /teszt változó kiírja az adatbázist adatokat
	$row="";
	//received datas count / visszaadja az adatok számát
	$td_size=0;
	//column count span / oszlopok száma az egy fejléc alá tartozó oszlopokhoz
	$c_row=0;
	//array of count rows / sorok száma tömb
	$cr;
	//array of count rows index / sorok száma tömb index
	$cri=0;
	//count row sum / sorok száma összesen
	$cr_sum=0;
	//array leds mark / led állapot tömb
	$leds_mark=null;
	//array leds meaning  / led jelentése tömb
	$leds_meaning=null;
	//counter for array leds_meaning & leds_mark / számlálk a led állapot és led jelentése tömbhöz
	$lma=0;
	$lme=0;
	$lmab=0;
	$lmeb=0;
	
?>