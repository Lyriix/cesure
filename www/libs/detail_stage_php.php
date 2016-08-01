<?php 

/* recuperation et affichage des details d'un stage  */

//Conexion à la BDD
ini_set('display_errors','on');
error_reporting(E_ALL);
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=cesure;charset=utf8','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e)
{
    $e->getMessage();
}

$num_cesure = $_GET['num_cesure'];
$req_cesure = $bdd->prepare('
SELECT filiere, majeure, ville, descriptif, duree_mois, entreprise, pays, continent FROM tab_cesure WHERE num_cesure = :num_cesure');
$req_cesure->execute(array(
                    'num_cesure' => $num_cesure));
    
$req_eleve = $bdd->prepare('SELECT nom, prenom, email FROM tab_eleve WHERE num_cesure = :num_cesure');
$req_eleve->execute(array('num_cesure'=>$num_cesure));

$donnees_cesure = $req_cesure->fetch();

echo 'Cesure pour laquelle vous avez demander des détails';
echo '<p>' . $donnees_cesure['descriptif'] . '</p>';
{
?>

<article>
    <h1>Détails de la cesure : </h1>
    <p>Filière : <?php echo $donnees_cesure['filiere'];?> </p>
    <p>Majeure : <?php echo $donnees_cesure['majeure'];?> </p>
    <p>Entreprise <?php echo $donnees_cesure['entreprise'];?> </p>
    <p>Duree (mois) : <?php echo $donnees_cesure['duree_mois'];?> </p>
    <p>Pays : <?php echo $donnees_cesure['pays'];?> </p>
    <p>Ville : <?php echo $donnees_cesure['ville'];?> </p>
    <p>Descriptif : <?php echo $donnees_cesure['descriptif'];?> </p>
</article>

<?php
}   
while($donnees_eleve = $req_eleve->fetch())
{
?>
    <article>
        <h1>A réalisé la cesure : </h1>
        <p>Prénom : <?php echo $donnees_eleve['nom'];?> </p>
        <p>Nom : <?php echo $donnees_eleve['prenom'];?> </p>
        <p>E-mail <?php echo $donnees_eleve['email'];?> </p>
    </article>
        
<?php
}
   
?>