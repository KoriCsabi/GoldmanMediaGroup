<?php
header('Content-Type: text/plain');

$dbHost = "localhost";
$dbUser = "root";
$dbPass = "";
$dbName = "goldman";

mysql_connect($dbHost, $dbUser, $dbPass) or die("Sikertelen kapcsolódás az adatbázishoz!");
mysql_select_db($dbName) or die("Sikertelen adatbázis megnyitás!");
mysql_query("SET NAMES latin2");

$user = "SELECT * FROM `user` AS `user` WHERE `email` = 'modulebugbear@randomthings.com'";
$user_data = mysql_query($user);
while($user_info = mysql_fetch_object($user_data)){
	echo "Név: " . $user_info -> name;
	echo "\r\n\n";
}


$stat = "SELECT * FROM `user` AS `user`
LEFT JOIN `banner` AS `banner` ON `user`.`id` = `banner`.`user_id` 
LEFT JOIN `statistic` AS `statistic` ON `statistic`.`banner_id` = `banner`.`id` 
WHERE `email` = 'modulebugbear@randomthings.com'
ORDER BY `statistic`.`day` DESC";
$stat_datas = mysql_query($stat);

echo "Tárgy nap\tBanner\t\t\tÖsszeg\r\n";
while($dataline = mysql_fetch_object($stat_datas)){
	echo str_replace("-", ".", $dataline -> day);
	echo "\t";
	echo $dataline -> name;
	echo "\t";
	echo $dataline -> amount;
	echo " $\r\n";
}
?>
