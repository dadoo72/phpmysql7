<?php
try {
  include __DIR__ . '/../includes/DatabaseConnection.php';
  include __DIR__ . '/../includes/DatabaseFunctions.php';

  if (isset($_POST['joketext'])){
  insertJoke($pdo, $_POST['joketext'], 1);
  
  header('location: jokes.php');
  } else {
      $title='Add a new Joke';
      ob_start();
      include __DIR__.'/../templates/addjoke.html.php';
      $output=ob_get_clean();
    }
} catch (PDOException $e) {
  $title = 'An error has occurred';

  $output = 'Database error: ' . $e->getMessage() . ' in ' .
$e->getFile() . ':' . $e->getLine();
}
  
include __DIR__.'/../templates/layout.html.php';


