<?php 

$servname = "localhost";
$username = "honeyurl";
$password = "mdp";
$dbname = "honeyurl";

$db = new PDO("mysql:host=$servname;dbname=$dbname", $username, $password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$query = $db->prepare("INSERT INTO requests (time, ip, method, useragent, params) VALUES (NOW(), ?, ?, ?, ?)");
$query->execute(Array($_SERVER['REMOTE_ADDR'], $_SERVER['REQUEST_METHOD'], $_SERVER['HTTP_USER_AGENT'], $_SERVER['QUERY_STRING']))



?>

<h1> You have been logged </h1>
