<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

// Return data dari model service
function to_obj($data=[]){
    if(!$data){
        return $data;
    }
    return json_decode(json_encode($data));
}