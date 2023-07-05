<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Api extends MY_Controller {

    function __construct()
    {
        parent::__construct();
        $this->load->model('Api_model');
    }

    public function list_get(){
        $result = $this->Api_model->gets();
        if($result){
            $this->response( $result, 200 );
        }
    }
}