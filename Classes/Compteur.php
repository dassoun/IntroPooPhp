<?php

Class Compteur {
    private static $_compteur = 0;
    
    public function __construct() {
        self::$_compteur++;
    }
    
    public static function getCompteur() { // Méthode statique qui renverra la valeur du compteur.
        return self::$_compteur;
    }
}

