<?php

function chargerClasse($classe) {
    require_once("./Classes/$classe.php");
}

spl_autoload_register("chargerClasse");


$perso = new Personnage([
    'nom' => 'Victor',
    'forcePerso' => 5,
    'degats' => 0,
    'niveau' => 1,
    'experience' => 0
        ]);

var_dump($perso);

$db = new PDO('mysql:host=localhost;dbname=introPooPhp', 'root', '');

$manager = new PersonnagesManager($db);

$manager->add($perso);
