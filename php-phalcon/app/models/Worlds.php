<?php

class Worlds extends \Phalcon\Mvc\Model
{
    public $id;

    public $randomNumber;

    public function columnMap()
    {
        //Keys are the real names in the table and
        //the values their names in the application
        return array(
            'id' => 'code',
            'the_name' => 'theName',
            'the_type' => 'theType',
            'the_year' => 'theYear'
        );
    }
    
    public function metaData(){
        var_dump('meta');die;
    }
    
    public function getSource() {
        return "World";
    }
}