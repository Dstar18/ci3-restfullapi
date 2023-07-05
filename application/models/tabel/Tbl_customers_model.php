<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tbl_customers_model extends CI_Model{

    public function gets(){
        $query = $this->db->select(['idCustomer','nama_customer','kecamatan','kelurahan','dusun'])->get('tb_customers')->result();
        return $query;
    }

    public function get($id){
        $query = $this->db->select(['idCustomer','nama_customer','telepon','kecamatan','kelurahan','dusun'])->where('idCustomer',$id)->get('tb_customers')->row();
        return $query;
    }

    public function insert($data){
        $query = $this->db->insert('tb_customers',$data);
        return $query;
    }

    public function update($data){
        $query = $this->db->where('idCustomer',$data['idCustomer'])->update('tb_customers',$data);
        return $query;
    }

    public function delete($id){
        $query = $this->db->where('idCustomer',$id)->delete('tb_customers');
        return $query;
    }
}