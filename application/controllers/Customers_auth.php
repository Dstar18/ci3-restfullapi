<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customers_auth extends MY_Controller{

    function __construct(){
        parent::__construct();
        $this->user = 'admin';
        $this->pass = 'admin';
        $this->load->model(['Customers_model']);
    }

    public function index_get($id=false) {
        if(!isset($_SERVER['PHP_AUTH_USER'])){
            header("WWW-Authenticate: Basic realm=\"Private Area\"");
            $result = ([
                "status"    => 401,
                "message"   => "Maaf, Anda tidak memiliki akses",
                "error"     => true,
                "data"      => null
            ]);
            $this->response($result, $result['status']);
            exit;
        }else{
            if(($_SERVER['PHP_AUTH_USER'] == $this->user && ($_SERVER['PHP_AUTH_PW'] == $this->pass))){
                if($id == ''){
                    $result = $this->Customers_model->gets();
                }else{
                    $result = $this->Customers_model->get($id);
                }
                $this->response($result, $result->status);
            }else{
                header("WWW-Authenticate: Basic realm=\"Private Area\"");
                $result = ([
                    "status"    => 401,
                    "message"   => "Maaf, Username/Password anda salah",
                    "error"     => true,
                    "data"      => null
                ]);
                $this->response($result, $result['status']);
            }
        }
    }

    public function index_post(){
        if(!isset($_SERVER['PHP_AUTH_USER'])){
            header("WWW-Authenticate: Basic realm=\"Private Area\"");
            $result = ([
                "status"    => 401,
                "message"   => "Maaf, Anda tidak memiliki akses",
                "error"     => true,
                "data"      => null
            ]);
            $this->response($result, $result['status']);
            exit;
        }else{
            if(($_SERVER['PHP_AUTH_USER'] == $this->user && ($_SERVER['PHP_AUTH_PW'] == $this->pass))){
                $post   = $this->input->post(null, TRUE);
                $result = $this->Customers_model->insert($post);
                $this->response($result, $result->status);
            }else{
                header("WWW-Authenticate: Basic realm=\"Private Area\"");
                $result = ([
                    "status"    => 401,
                    "message"   => "Maaf, Username/Password anda salah",
                    "error"     => true,
                    "data"      => null
                ]);
                $this->response($result, $result['status']);
            }
        }
    }

    public function index_patch(){
        if(!isset($_SERVER['PHP_AUTH_USER'])){
            header("WWW-Authenticate: Basic realm=\"Private Area\"");
            $result = ([
                "status"    => 401,
                "message"   => "Maaf, Anda tidak memiliki akses",
                "error"     => true,
                "data"      => null
            ]);
            $this->response($result, $result['status']);
            exit;
        }else{
            if(($_SERVER['PHP_AUTH_USER'] == $this->user && ($_SERVER['PHP_AUTH_PW'] == $this->pass))){
                $post   = $this->input->input_stream(null, TRUE);
                $result = $this->Customers_model->update($post);
                $this->response($result, $result->status);
            }else{
                header("WWW-Authenticate: Basic realm=\"Private Area\"");
                $result = ([
                    "status"    => 401,
                    "message"   => "Maaf, Username/Password anda salah",
                    "error"     => true,
                    "data"      => null
                ]);
                $this->response($result, $result['status']);
            }
        }
    }

    public function index_delete($id=false){
        if(!isset($_SERVER['PHP_AUTH_USER'])){
            header("WWW-Authenticate: Basic realm=\"Private Area\"");
            $result = ([
                "status"    => 401,
                "message"   => "Maaf, Anda tidak memiliki akses",
                "error"     => true,
                "data"      => null
            ]);
            $this->response($result, $result['status']);
            exit;
        }else{
            if(($_SERVER['PHP_AUTH_USER'] == $this->user && ($_SERVER['PHP_AUTH_PW'] == $this->pass))){
                $result = $this->Customers_model->delete($id);
                $this->response($result, $result->status);
            }else{
                header("WWW-Authenticate: Basic realm=\"Private Area\"");
                $result = ([
                    "status"    => 401,
                    "message"   => "Maaf, Username/Password anda salah",
                    "error"     => true,
                    "data"      => null
                ]);
                $this->response($result, $result['status']);
            }
        }
    }

}