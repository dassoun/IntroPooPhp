<?php

class Magicien extends Personnage {
    
    public function lancerUnSort(Personnage $perso)
    {
        if ($this->degats > 0 && $this->degats <= 25) {
            $this->SetAtout(4);
        } 
        elseif ($this->degats > 25 && $this->degats <= 50) {
            $this->setAtout(3);
        } 
        elseif ($this->degats > 50 && $this->degats <= 75) {
            $this->setAtout(2);
        }
        elseif ($this->degats > 74 && $this->degats <= 90) {
            $this->setAtout(1);
        }
        else {
            $this->setAtout(0);
        }
        
        if ($perso->id == $this->id) {
            return self::CEST_MOI;
        }

        if ($this->atout == 0) {
            return self::PAS_DE_MAGIE;
        }

        if ($this->estEndormi()) {
            return self::PERSO_ENDORMI;
        }

        $perso->timeEndormi = time() + ($this->atout * 6) * 3600;

        return self::PERSONNAGE_ENSORCELE;
    }
}