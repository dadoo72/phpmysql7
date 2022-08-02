<?php 

try{
	$pdo = new PDO('mysql:host=localhost;dbname=ijdb;charset=utf8mb4', 'ijdbuser', 'mypassword');

	$sql ='SELECT `joketext` FROM `joke`';
  $result = $pdo->query($sql);

	foreach ($result as $row) {
  $jokes[] = $row['joketext'];
}
}
catch (PDOException $e){
	// $output = 'Unable to connect to thedatabase server: '.$e->getMessage();
	$output = 'Database error: ' . $e->getMessage() . ' in ' .
  $e->getFile() . ':' . $e->getLine();
}

include __DIR__ . '/../templates/jokes.html.php';