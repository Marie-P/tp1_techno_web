<?php
  // on vérifie si on a un paramètre dans le get qui s'appelle page et on vérifie s'il n'est pas vide
  if(isset($_GET['page']) && !empty($_GET['page'])){ 
    $currentPage = (int) strip_tags($_GET['page']);
  } else { // si c'est vide, on dit qu'on est à la page 1
    $currentPage = 1;
  }

  // Pour se connecter à la base de données
  require_once('connect.php');

  // On récupère le nombre de personnes total
  $result = $database->query('SELECT COUNT(*) AS nbPersonnes FROM `personnes`')->fetch();
  
  // On sécurise en castant en un entier 
  $nbPersonnes = (int) $result['nbPersonnes'];

  // On détermine le nombre total de personnes par page
  $personnesDisplayed = 5;

  // On arrondi à l'entier supérieur, pour garder ceux qui sont en plus des pages (exemple pour 12 personnes il nous faut 3 pages et non 2)
  $pages = ceil($nbPersonnes/$personnesDisplayed);
  
  // On calcul qui est la première personne de la page
  $first = ($currentPage * $personnesDisplayed) - $personnesDisplayed; // La personne qui se trouve en haut de la page

  // On récupère les informations de la première personne de la page et les personnes suivante en fonction de la limite fixé
  $query = $database->prepare('SELECT * FROM `personnes` LIMIT :first, :personnesDisplayed;'); // on commence à :first jusqu'au numéro :personnesDisplayed
  $query->bindValue(':first', $first, PDO::PARAM_INT);
  $query->bindValue(':personnesDisplayed', $personnesDisplayed, PDO::PARAM_INT);
  $query->execute();
  $personnes = $query->fetchAll(PDO::FETCH_ASSOC);
  
  // Pour bien fermer la bdd
  $database = null;
?>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TP1 - Pagination</title>
    <link rel="stylesheet" href="css/style.css">
  </head>
  <body>
    <center>
      <h1>Personnes enregistrées</h1> 
      <table>
        <thead>
          <th>Nom</th>
          <th>Prénom</th>
          <th>Email</th>
        </thead>
        <tbody> <!-- affichage des informations pour chaque personne -->
          <?php
            foreach($personnes as $personne){
          ?>
            <tr>
              <td><?= $personne['nom'] ?></td>
              <td><?= $personne['prenom'] ?></td>
              <td><?= $personne['email'] ?></td>
            </tr>
          <?php
          }
          ?>
        </tbody>
      </table>
    </center>
    <div class="pages">
      <?php if ($currentPage != 1){ ?> <!-- on affiche "précédente" si on est pas sur la première page -->
        <a href="./?page=<?= $currentPage - 1 ?>">Précédente</a>
      <?php } ?>
      <?php for($page = 1; $page <= $pages; $page++){ ?> <!-- on affiche tous les numéros de pages, lorsqu'il est celui en cours, on le notifie en "active" -->
          <a href="./?page=<?= $page ?>" class="page-link <?= ($currentPage == $page) ? "active" : "" ?>"><?= $page ?></a>
      <?php } ?>
      <?php if ($currentPage != $pages){ ?> <!-- on affiche "suivante" si on est pas sur la dernière page -->
        <a href="./?page=<?= $currentPage + 1 ?>" class="page-link">Suivante</a>
      <?php } ?>
    </div>
  </body>
</html>