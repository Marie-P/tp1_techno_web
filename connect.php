<?php
  try {
    $port="8889";
    $db="tp1_pagination_MariePaule";
    $user='root';
    $pass='root';
    $connect = "mysql:host=localhost:$port;dbname=$db";
    $database = new PDO($connect, $user, $pass);
    // $result = $database->query('SELECT identifiant FROM personnes')->fetchAll();
    // $identifiants = array();
    // foreach($result as $value){
    //   array_push($identifiants, $value[0]);
    // }
   
  } catch (PDOException $e) {
      print "Erreur !: " . $e->getMessage() . "<br/>";
      die();
  }
?>