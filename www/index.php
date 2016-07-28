<!--
<?php

if(isset($_COOKIE['email']) AND isset($_COOKIE['mdp']))
{
    //Il faut le connecter directement en l'envoyant sur la page d'acceuil du membre connecté
}

?>
-->

<!DOCTYPE html>
<html>
    <!--
  * Please see the included README.md file for license terms and conditions.
  -->

    <head>
        <link rel="stylesheet" type="text/css" href="css/home_default.css">
        <link rel="stylesheet" type="text/css" href="css/header_menu.css">
        <meta charset="UTF-8">
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
        <?php include('includes/entete.php');?>
        
        <!-- Menu -->
        
        <?php include('includes/menu_non_membre.php');?>

        <article>
        <!-- Informations sur le contenu du site -->
        </article>
        <aside id="connexion">
            <?php include('modules/connexion.php'); ?>
        </aside>

        <!-- Pied de page -->
        <?php include('includes/pieddepage.php');?>

    </body>

</html>