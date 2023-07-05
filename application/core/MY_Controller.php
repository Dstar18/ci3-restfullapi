<?php
defined('BASEPATH') OR exit('No direct script access allowed');

use chriskacerguis\RestServer\RestController;

class MY_Controller extends RestController{

    function __construct()
    {
        parent::__construct();
        $this->load->helper(['url','util']);
        $this->load->library(['form_validation']);
    }
}