<?php 

$servname = "localhost";
$username = "honeyurl";
$password = "mdp";
$dbname = "honeyurl";

$db = new PDO("mysql:host=$servname;dbname=$dbname", $username, $password);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$params=$_SERVER['QUERY_STRING'];
foreach($_POST as $key => $val){
	$params .= "&" . $key . "=" . $val;
}

$https = !empty($SERVER['HTTPS']) && $_SERVER['HTTPS']==='on';

$query = $db->prepare("INSERT INTO requests (time, ip, host, method, useragent, params, https) VALUES (NOW(), ?, ?, ?, ?, ?, ?)");
$query->execute(Array($_SERVER['REMOTE_ADDR'], $_SERVER['HTTP_HOST'], $_SERVER['REQUEST_METHOD'], $_SERVER['HTTP_USER_AGENT'], $params, $https))



?>

<h1> You have been logged </h1>
