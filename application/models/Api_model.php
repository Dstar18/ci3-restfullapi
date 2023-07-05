<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Api_model extends CI_model{

	function __construct(){
        parent::__construct();
    }

    public function gets(){
        $users = [
            ['id' => 0, 'name' => 'John', 'email' => 'john@example.com'],
            ['id' => 1, 'name' => 'Jim', 'email' => 'jim@example.com'],
        ];
        return to_obj($users);
    }
   
} 
