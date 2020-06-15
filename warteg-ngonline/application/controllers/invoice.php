<?php

class Invoice extends CI_Controller{
	public function index()
	{
		$data['Invoice'] = $this->model_invoice->tampil_data();
		$this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/invoice', $data);
        $this->load->view('templates_admin/footer');
	}
}
	
