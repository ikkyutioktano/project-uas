<div class="container-fluid">
    <button class="btn btn-sm btn-primary mb-5" data-toggle="modal" data-target="#tambah_menu"><i class ="fas fa-plus fa-sm"></i>Tambah Daftar Menu</button> 

    <table class="table table-bordered">
     <tr>
      <th>NO</th>
      <th>NAMA MAKANAN</th>
      <th>KETERANGAN</th>
      <th>KATEGORI</th>
      <th>HARGA</th>
      <th>PERSEDIAAN</th>
      <th colspan="3">AKSI</th>
     </tr>

     <?php
     $no=1;
     foreach ($menu as $mn) : ?>
     <tr>
        <td <?php echo $no++ ?>></td>
        <td><?php echo $mn ->nama_makanan?></td>
        <td><?php echo $mn ->keterangan?></td>
        <td><?php echo $mn ->kategori?></td>
        <td><?php echo $mn ->harga?></td>
        <td><?php echo $mn ->persediaan?></td>
        <td><div class="btn btn-success btn-sm"><i class="fa fa-search" aria-hidden="true"></i></div></td>
        <td><?php echo anchor('admin/daftar_menu/edit/' .$mn->id_makanan, '<div class="btn btn-primary btn-sm"><i class="fa fa-edit"></i></div>') ?></td>
        <td><?php echo anchor('admin/daftar_menu/hapus/' .$mn->id_makanan, '<div class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></div>') ?></td>
     </tr>

     <?php endforeach; ?>

     
    </table>

</div>


<!-- Modal -->
<div class="modal fade" id="tambah_menu" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Tambah Daftar Menu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="<?php echo base_url().'admin/daftar_menu/tambah_aksi';?>" method="post" enctype="multipart/form-data">
        
            <div class="form-group">
                <label>Nama Makanan</label>
                <input type="text" name="nama_makanan" class="form-control">
            </div>
            <div class="form-group">
                <label>Keterangan</label>
                <input type="text" name="keterangan" class="form-control">
            </div>
            <div class="form-group">
                <label>kategori</label>
                <input type="text" name="kategori" class="form-control">
            </div>
            <div class="form-group">
                <label>Harga</label>
                <input type="text" name="harga" class="form-control">
            </div>
            <div class="form-group">
                <label>Persediaan</label>
                <input type="text" name="persediaan" class="form-control">
            </div>
            <div class="form-group">
                <label>Gambar</label><br>
                <input type="file" name="gambar" class="form-control">
            </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Keluar</button>
        <button type="submit" class="btn btn-primary">Simpan</button>
      </div>
    </form>
    </div>
  </div>
</div>