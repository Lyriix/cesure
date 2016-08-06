<?php 
session_start(); //On démarre la session avant toute chose
?>
<!DOCTYPE html>
<html>
    <!--
  * Please see the included README.md file for license terms and conditions.
  -->

    <head>
        <link rel="stylesheet" type="text/css" href="css/general.css">
        <link rel="stylesheet" type="text/css" href="css/includes.css">
        <link rel="stylesheet" type="text/css" href="css/form.css">
        <link rel="stylesheet" type="text/css" href="css/menu.css">
        <title>Cesure Map</title>
        <meta http-equiv="Content-type" content="text/html; charset=utf-8">


        <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1, user-scalable=no">

        <style>
                @-ms-viewport { width: 100vw ; min-zoom: 100% ; zoom: 100% ; }          @viewport { width: 100vw ; min-zoom: 100% zoom: 100% ; }
                @-ms-viewport { user-zoom: fixed ; min-zoom: 100% ; }                   @viewport { user-zoom: fixed ; min-zoom: 100% ; }
        </style>
        
        <script type="application/javascript">
            $.afui.autoLaunch = false; //By default, it is set to true and you're app will run right away.  We set it to false to show a splashscreen
            /* This function runs when the content is loaded.*/
            $.afui.useOSThemes=false;
             $(document).ready(function(){
                setTimeout(function(){
                    $.afui.launch();
                },1500);
            });
        </script>
    </head>

    <body id="home" class="v2">
        <!-- en tete -->
        <?php include('../includes/entete.php');?>
        <!-- Menu -->
        <?php include('../includes/menu_membre.php');?>

        
        <?php
        
        //Connexion bdd
        try
        {
            $bdd = new PDO('mysql:host=localhost;dbname=cesure;charset=utf8','root','root',array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
        }
        catch(Exception $e)
        {
            $e->getMessage();
        }
        
        //Affichage des informations du membres
        
        
        ?>
            
        
        <?php
        $req = $bdd->prepare('SELECT nom,prenom,email,filiere,num_cesure FROM tab_eleve WHERE id=:id');
        $req->execute(array('id' => $_SESSION['id']));
        $rep = $req->fetch();
        
        ?>
        <article>
            <header>Vos informations personnelles</header>
            <p > Votre adresse email est : <?php echo $_SESSION['email']; ?> </p>
            <p >Votre Nom : <?php echo $rep['nom'];?> </p>
            <p >Votre Prénom : <?php echo $rep['prenom'];?> </p>
            <p >Votre Filière : <?php echo $rep['filiere'];?> </p>
            <p ><a href="changePassword.php">Changer mot de passe</a> </p>
            <aside>
                <form method=post action="/www/libs/addPhoto_php.php" enctype="multipart/form-data">
                    <input type=file name="photo">
                    <input type=submit value="AjouterPhoto">
                </form>
            </aside>
            <?php 
            $nom="../photos/mini_{$_SESSION['id']}.jpg";
            echo $nom;
            print '<img src="'.$nom.'" alt="photo de profil">'; 
            ?>
        </article>
        
        

        <!-- Pied de page -->
        <?php include('../includes/pieddepage.php');?>

    </body>

</html>