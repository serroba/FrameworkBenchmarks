<?php

class WorldsPG extends \Phalcon\Mvc\Model
{
    public $id;

    public $randomNumber;
    
    public function getSource() {
        return "world";
    }
    
    public function initialize(){
        $this->setConnectionService('dbPostgres');
    }
}