<?php
header('Content-Type: text/plain');  // Setting the header type to formatting the tabulators

$dbHost = "localhost";  // Set mysql host
$dbUser = "root";		// Set mysql username
$dbPass = "";			// Set mysql password
$dbName = "goldman";	// Set mysql database name

mysql_connect($dbHost, $dbUser, $dbPass) or die("Sikertelen kapcsolódás az adatbázishoz!");  // Try to connect to the mysql server, if get back a response when die
mysql_select_db($dbName) or die("Sikertelen adatbázis megnyitás!");   // Try to open the database, or throw back failure when the connecting failed
mysql_query("SET NAMES latin2");  // Set the database queries to Latin2

$user = "SELECT * FROM `user` AS `user` WHERE `email` = 'modulebugbear@randomthings.com'";  // Select the user information
$user_data = mysql_query($user);  // Run the user info query
while($user_info = mysql_fetch_object($user_data)){  // Processing the user information query in object
	echo "Név: " . $user_info -> name; // Get back the name of user
	echo "\r\n\n";
} 	// End of user query process


$stat = "SELECT * FROM `user` AS `user`  
LEFT JOIN `banner` AS `banner` ON `user`.`id` = `banner`.`user_id` 
LEFT JOIN `statistic` AS `statistic` ON `statistic`.`banner_id` = `banner`.`id` 
WHERE `email` = 'modulebugbear@randomthings.com'
ORDER BY `statistic`.`day` DESC";  // Get all statistics of user's banner
$stat_datas = mysql_query($stat);  // Run the statistic query

echo "Tárgy nap\tBanner\t\t\tÖsszeg\r\n";  // Write the headline of table
while($dataline = mysql_fetch_object($stat_datas)){ // Processing the statistics query in object
	echo str_replace("-", ".", $dataline -> day);  // Get the day
	echo "\t"; 					// Formatting to table with tabulators
	echo $dataline -> name; 	// Get the name of banner
	echo "\t";					// Formatting to table with tabulators
	echo $dataline -> amount;	// Get the amount of each banners
	echo " $\r\n";				// Break the line 
}  // End of statistic query process
?>
