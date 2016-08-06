<?php 
// Vérification de l'authentification de l'utilisateur 
//Connexion à la bdd 
try
{
    $bdd = new PDO('mysql:host=localhost;dbname=cesure;charset=utf8','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
}
catch(Exception $e)
{
    $e->getMessage();
}



$email = htmlspecialchars($_POST["email"]);

//hachage du mot de passe 
if($_POST['mdp'] != '0000')
{
$mdp_hache = sha1($_POST['mdp']);
}
else
{
    $mdp_hache = $_POST['mdp']; //pour que ceux qui recoivent 0000 comme mdp par défaut puissent se connecter et le changer
}
//vérification des identifiants
$req = $bdd->prepare('SELECT id FROM tab_eleve WHERE email = :email AND mdp = :mdp');
$req->execute(array(
            'email'=> $email,
            'mdp' => $mdp_hache));

$resultat = $req->fetch(); //Une seule ligne car oui on est censé n'avoir qu'un resultat dans la requete au maximum


if(!$resultat) //Si on a pas de resultat 
{
    echo 'Mauvais identifiant ou mot de passe';
}
else
{
    session_start();
    $_SESSION['id'] = $resultat['id'];
    $_SESSION['email'] = $email;
    
    /*Connexion automatique */
    
    if(isset($_POST['connexion_automatique']) )
    {
        setcookie('email',$email,time()+365*24*3600,null,null,false,true);
        setcookie('mdp',$mdp_hache,time()+365*24*3600,null,null,false,true);
    }
    
    header('Location: ../modules/acceuil.php',true);/*********************/
   // echo 'vous êtes connecté(e)'; 
}
?>