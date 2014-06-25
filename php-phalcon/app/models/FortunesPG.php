<?php

class FortunesPG extends \Phalcon\Mvc\Model
{
    public $id;

    public $message;

    public function getSource() {
        return "Fortune";
    }
    
    public function initialize(){
        $this->setConnectionService('dbPostgres');
    }
}