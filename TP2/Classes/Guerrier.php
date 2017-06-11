<?php

class Guerrier extends Personnage {
    
    public function recevoirDegats() {
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
        
        $this->degats += (5 - $this->atout());
        
        // Si on a 100 de dégâts ou plus, on dit que le personnage a été tué.
        if ($this->degats >= 100) {
            return self::PERSONNAGE_TUE;
        }

        // Sinon, on se contente de dire que le personnage a bien été frappé.
        return self::PERSONNAGE_FRAPPE;
    }
}