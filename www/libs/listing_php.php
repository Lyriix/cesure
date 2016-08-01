<?php 

/* Réalisation de la procédure d'inscription */

//Conexion à la BDD

try
{
    $bdd = new PDO('mysql:host=localhost;dbname=cesure;charset=utf8','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e)
{
    $e->getMessage();
}


//On doit recuperer les cesures et les personnes associés : jointure ?

$req_cesure = $bdd->query('SELECT num_cesure, filiere, majeure, ville, descriptif, duree_mois, entreprise, pays, continent FROM tab_cesure');

echo '<table>';
echo '<tr><th>Filiere</th><th>Majeure</th><th>Entreprise</th><th>Duree</th><th>Pays</th><th>Ville</th><th>Descriptif</th></tr>';
while($donnees = $req_cesure->fetch())
{
?>

    <tr>
        <td> <?php echo $donnees['filiere'];?> </td>
        <td> <?php echo $donnees['majeure'];?> </td>
        <td> <?php echo $donnees['entreprise'];?> </td>
        <td> <?php echo $donnees['duree_mois'];?> </td>
        <td> <?php echo $donnees['pays'];?> </td>
        <td> <?php echo $donnees['ville'];?> </td>
        <td> <?php echo $donnees['descriptif'];?> </td> <!-- Afficher seulement une partie du descriptif -->
        <td> <?php echo "<a href ='/www/modules/detail_stage.php?num_cesure=". $donnees['num_cesure'] . ">See More</a>"; ?> </td>;
    </tr>


<?php
}

echo '</table>';

?>