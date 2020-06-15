<?php

class dashboard extends ci_controller{
    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') !='2'
            ){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">Anda Belum Login!!
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>');
        redirect('auth/login');
        }
    }
    
    public function tambah_ke_pesanan($id)
    {
        $menu = $this->model_menu->find($id);
        $data = array(
            'id'      => $menu->id_makanan,
            'qty'     => 1,
            'price'   => $menu->harga,
            'name'    => $menu->nama_makanan
            );
    
    $this->cart->insert($data);
    redirect('dashboard');
    }

    public function detail_pesanan()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('keranjang');
        $this->load->view('templates/footer');
    }
    public function hapus_pesanan()
    {
        $this->cart->destroy();
        redirect('dashboard/index');
    }

    public function pembayaran()
    {
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('pembayaran');
        $this->load->view('templates/footer');
    }

    public function proses_pesanan()
    {
        $is_processed = $this->model_invoice->index();
        if($is_processed){
            $this->cart->destroy();
            $this->load->view('templates/header');
            $this->load->view('templates/sidebar');
            $this->load->view('proses_pesanan');
            $this->load->view('templates/footer'); 
        } else {
            echo "Maaf, Pesanan Anda Gagal !!!";
        }    
    }
}