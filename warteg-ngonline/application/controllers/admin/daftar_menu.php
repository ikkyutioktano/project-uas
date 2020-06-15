<?php 

class daftar_menu extends CI_Controller{
    public function __construct(){
        parent::__construct();

        if($this->session->userdata('role_id') !='1'
            ){
            $this->session->set_flashdata('pesan','<div class="alert alert-danger alert-dismissible fade show" role="alert">Anda Belum Login!!
                          <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                          </button>
                        </div>');
        redirect('auth/login');
        }
    }
    public function index()
    {
        $data['menu'] = $this->model_menu->tampil_data()->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/daftar_menu', $data);
        $this->load->view('templates_admin/footer');
    }
    public function tambah_aksi()
    {
        $nama_makanan   = $this->input->post('nama_makanan');
        $keterangan     = $this->input->post('keterangan');
        $kategori       = $this->input->post('kategori');
        $harga          = $this->input->post('harga');
        $persediaan     = $this->input->post('persediaan');
        $gambar         = $_FILES['gambar']['name'];
        if ($gambar =''){}else{
            $config['upload_path']='./upload';
            $config['allowed_types']='jpg|jpeg|png|gif';

            $this->load->library('upload', $config);
            if(!$this->upload->do_upload('gambar')){
                echo "Gambar Gagal !!";
            }else{
                $gambar=$this->upload->data(file_name);
            }
        }

        $data = array (
            'nama_makanan' => $nama_makanan,
            'keterangan' => $keterangan,
            'kategori' => $kategori,
            'harga' => $harga,
            'persediaan' => $persediaan,
            'gambar' => $gambar,
        );

        $this->model_menu->tambah_menu($data, 'menu');
        redirect('admin/daftar_menu/index');

    }

    public function edit($id_makanan)
    {
        $where = array('id_makanan' =>$id_makanan);
        $data['menu'] = $this->model_menu->edit_menu($where, 'menu')->result();
        $this->load->view('templates_admin/header');
        $this->load->view('templates_admin/sidebar');
        $this->load->view('admin/edit_menu', $data);
        $this->load->view('templates_admin/footer');
    }

    public function update(){
        $id_makanan     = $this->input->post('id_makanan');
        $nama_makanan   = $this->input->post('nama_makanan');
        $keterangan     = $this->input->post('keterangan');
        $kategori       = $this->input->post('kategori');
        $harga          = $this->input->post('harga');
        $persediaan     = $this->input->post('persediaan');

        $data = array(

            'nama_makanan'  => $nama_makanan,
            'keterangan'    => $keterangan,
            'kategori'      => $kategori,
            'harga'         => $harga,
            'persediaan'    => $persediaan
        );

        $where = array(
            'id_makanan' => $id_makanan
        );

        $this->model_menu->update_data($where,$data,'menu');
        redirect('admin/daftar_menu/index'); 
    }
    
    public function hapus($id_makanan)
    {
        $where = array('id_makanan' => $id_makanan);
        $this->model_menu->hapus_data($where, 'menu');
        redirect('admin/daftar_menu/index');
    }
}