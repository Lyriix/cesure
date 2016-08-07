<section>
<?php

if (!isset($_SESSION)) { session_start(); }
ini_set('display_errors','on');
error_reporting(E_ALL);
        
        //Connexion bdd
        try
        {
            $bdd = new PDO('mysql:host=localhost;dbname=cesure;charset=utf8','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch(Exception $e)
        {
            $e->getMessage();
        }
        
if(isset($_SESSION['nom']))
{
    echo '<p>Bonjour ' . $_SESSION['nom']. '</p>';
}


$req=$bdd->query('SELECT * FROM tab_cesure');
$nb_cesure = 0;
while($cesure = $req->fetch())
{
    $nb_cesure++;
}

?>

<p>Il y a à ce jour <?php echo $nb_cesure; ?>  Cesures referencées sur ce site internet </p>
<!-- pourquoi faire un espece de graphique sympa avec le nombre de césures, le nombre de pays representés, le nombre de mois de stages au total, ... -->

</section>