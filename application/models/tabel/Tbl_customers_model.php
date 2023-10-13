<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Tbl_customers_model extends CI_Model{

    public function gets(){
        $query = $this->db->select(['id','nik','nama','jenisKelamin','alamat'])->get('tb_customers')->result();
        return $query;
    }

    public function get($id){
        $query = $this->db->select(['id','nik','nama','jenisKelamin','alamat'])->where('id',$id)->get('tb_customers')->row();
        return $query;
    }

    public function insert($data){
        $query = $this->db->insert('tb_customers',$data);
        return $query;
    }

    public function update($data){
        $query = $this->db->where('id',$data['id'])->update('tb_customers',$data);
        return $query;
    }

    public function delete($id){
        $query = $this->db->where('id',$id)->delete('tb_customers');
        return $query;
    }
}