<!DOCTYPE html>
<html>
<!--
  * Please see the included README.md file for license terms and conditions.
  -->
<head>
    <title>Welcome/Connexion</title>
    <meta http-equiv="Content-type" content="text/html; charset=utf-8">
    <link rel="stylesheet" type="text/css" href="css/connexion.css">
    <!-- see http://webdesign.tutsplus.com/tutorials/htmlcss-tutorials/quick-tip-dont-forget-the-viewport-meta-tag -->
    <meta name="viewport" content="width=device-width, minimum-scale=1, initial-scale=1, user-scalable=no">
    <style>
        /* following two viewport lines are equivalent to meta viewport statement above, needed for Windows */
        /* see http://www.quirksmode.org/blog/archives/2014/05/html5_dev_conf.html and http://dev.w3.org/csswg/css-device-adapt/ */
        @-ms-viewport { width: 100vw ; min-zoom: 100% ; zoom: 100% ; }  @viewport { width: 100vw ; min-zoom: 100% zoom: 100% ; }
        @-ms-viewport { user-zoom: fixed ; min-zoom: 100% ; }           @viewport { user-zoom: fixed ; min-zoom: 100% ; }
    </style>

    <!-- Uncomment the following scripts if you convert your "Standard HTML5" project into a "Cordova" project. -->
    <!-- <script src="cordova.js"></script> -->          <!-- phantom library, needed for Cordova api calls, added during build -->
    <!-- <script src="js/app.js"></script> -->           <!-- recommended location of your JavaScript code relative to other JS files -->
    <!-- <script src="xdk/init-dev.js"></script> -->     <!-- normalizes device and document ready events, see README for details -->
</head>

<body>

    <form method="post" action="/www/libs/connexion_php.php">
      <p>
            <label for="email">E-Mail</label>
            <input type=email name="email"  placeholder="prenom.nom@cpe.fr" required>
       </p>
        <p>
            <label for="mdp">Password</label>
            <input type=password name="mdp" required> 
       </p>
        <p>
            <label for="connexion_automatique">Connexion Automatique</label>
            <input type=checkbox name="connexion_automatique">
        </p>
        <p>
            <input type="submit" value="connexion">
        </p>
        <p style="color:white">Vous n'êtes pas encore inscrit ? <a href="modules/inscription.php">Inscription</a></p>
    </form>
    
      
    <!-- <?php include('../includes/connexion_php.php'); ?> -->

</body>
</html>
