<?php

class Kategori extends CI_Controller{
	public function makanan_kuah()
	{
		$data['makanan_kuah'] = $this->model_kategori->data_makanan_kuah()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('makanan_kuah' ,$data);
		$this->load->view('templates/footer');
	}
	public function makanan_kering()
	{
		$data['makanan_kering'] = $this->model_kategori->data_makanan_kering()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('makanan_kering' ,$data);
		$this->load->view('templates/footer');
	}
	public function minuman()
	{
		$data['minuman'] = $this->model_kategori->data_minuman()->result();
		$this->load->view('templates/header');
		$this->load->view('templates/sidebar');
		$this->load->view('minuman' ,$data);
		$this->load->view('templates/footer');
	}
}