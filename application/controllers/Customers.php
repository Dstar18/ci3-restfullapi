<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customers extends MY_Controller{

    function __construct(){
        parent::__construct();
        $this->load->model(['Customers_model']);
    }
    public function index_get($id=false){
        if($id == ''){
            $result = $this->Customers_model->gets();
        }else{
            $result = $this->Customers_model->get($id);
        }
        $this->response($result, $result->status);
    }

    public function index_post(){
        $post   = $this->input->post(null, TRUE);
        $result = $this->Customers_model->insert($post);
        
        $this->response($result, $result->status);
    }

    public function index_put(){
        $post   = $this->input->input_stream(null, TRUE);
        $result = $this->Customers_model->update($post);
        
        $this->response($result, $result->status);
    }

    public function index_delete($id=false){
        $result = $this->Customers_model->delete($id);
        
        $this->response($result, $result->status);
    }

}