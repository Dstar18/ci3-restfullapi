<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Customers_model extends CI_Model{

    function __construct(){
        parent::__construct();
        $this->load->model('tabel/Tbl_customers_model');
    }

    public function gets(){
        $result = $this->Tbl_customers_model->gets();
        return to_obj([
            "status"    => 200,
            "message"   => "OK",
            "error"     => false,
            "data"      => $result
        ]);
    }

    public function get($id){
        $cekID  = $this->db->where('idCustomer', $id)->get('tb_customers');
        if($cekID->num_rows()>0){
            $result = $this->Tbl_customers_model->get($id);
            return to_obj([
                "status"    => 200,
                "message"   => "OK",
                "error"     => false,
                "data"      => $result
            ]);
        }else{
            return to_obj([
                "status"    => 404,
                "message"   => "Customers not found",
                "error"     => true,
                "data"      => null
            ]);
        }
    }

    public function insert($post){
        if($post == null || empty($post['nik']) || empty($post['nama_customer']) || empty($post['telepon']) || empty($post['dusun']) || 
        empty($post['rt']) || empty($post['rw']) || empty($post['kelurahan']) || empty($post['kecamatan'])){
            return to_obj([
                "status"    => 502,
                "message"   => "Field tidak boleh kosong",
                "error"     => true,
                "data"      => null
            ]);
        }else{

            $data = array(
                'nik'               => $post['nik'],
                'nama_customer'     => $post['nama_customer'],
                'telepon'           => $post['telepon'],
                'dusun'             => $post['dusun'],
                'rt'                => $post['rt'],
                'rw'                => $post['rw'],
                'kelurahan'         => $post['kelurahan'],
                'kecamatan'         => $post['kecamatan']
            );
            $cekNIK = $this->db->where('nik',$data['nik'])->get('tb_customers');
            if($cekNIK->num_rows()>0){
                return to_obj([
                    "status"    => 502,
                    "message"   => "NIK sudah terdaftar",
                    "error"     => true,
                    "data"      => null
                ]);
            }else{
                $result = $this->Tbl_customers_model->insert($data);
                return to_obj([
                    "status"    => 200,
                    "message"   => "Created successfully",
                    "error"     => false,
                    "data"      => $result
                ]);
            }

        }
    }

    public function update($post){
        if($post == null || empty($post['idCustomer']) || empty($post['nama_customer']) || empty($post['telepon']) || empty($post['kecamatan'])){
            return to_obj([
                "status"    => 502,
                "message"   => "Field tidak boleh kosong",
                "error"     => true,
                "data"      => null
            ]);
        }else{
            $data = array(
                'idCustomer'        => $post['idCustomer'],
                'nama_customer'     => $post['nama_customer'],
                'telepon'           => $post['telepon'],
                'kecamatan'         => $post['kecamatan']
            );
            $cekID  = $this->db->where('idCustomer', $data['idCustomer'])->get('tb_customers');
            if($cekID->num_rows()>0){
                $this->Tbl_customers_model->update($data);
                $result = $this->Tbl_customers_model->get($data['idCustomer']);
                return to_obj([
                    "status"    => 200,
                    "message"   => "Update successfully",
                    "error"     => false,
                    "data"      => $result
                ]);
            }else{
                return to_obj([
                    "status"    => 404,
                    "message"   => "Customers not found",
                    "error"     => true,
                    "data"      => null
                ]);
            }

        }
    }

    public function delete($id){
        $cekID  = $this->db->where('idCustomer', $id)->get('tb_customers');
        if($cekID->num_rows()>0){
            $result = $this->Tbl_customers_model->delete($id);
            return to_obj([
                "status"    => 200,
                "message"   => "Delete successfully",
                "error"     => false,
                "data"      => $result
            ]);
        }else{
            return to_obj([
                "status"    => 404,
                "message"   => "Customers not found",
                "error"     => true,
                "data"      => null
            ]);
        }
    }
}