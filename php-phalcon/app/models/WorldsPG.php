<?php

class WorldsPG extends \Phalcon\Mvc\Model
{
    public $id;

    public $randomNumber;

    public function getSource() {
        return "World";
    }
    
    public function initialize(){
        $this->setConnectionService('dbPostgres');
    }
}