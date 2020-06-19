<?php

class Model_kategori extends CI_Model{
	public function data_makanan_kuah(){
		return $this->db->get_where("menu",array('kategori' => 'Makanan Kuah'));
	}
	public function data_makanan_kering(){
		return $this->db->get_where("menu",array('kategori' => 'Makanan Kering'));
	}
	public function data_minuman(){
		return $this->db->get_where("menu",array('kategori' => 'Minuman'));
	}
}