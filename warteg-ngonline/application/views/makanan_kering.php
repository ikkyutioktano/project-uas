<div class="container-fluid">

<div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="<?php echo base_url('assets/img/wartegngonline1.jpg') ?>" class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="<?php echo base_url('assets/img/warteg1.png') ?>" class="d-block w-100" alt="...">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div><br>

  <div class="row text-center">

    <?php foreach ($makanan_kering as $mn) : ?>
      <div class="card ml-3" style="width: 16rem;">
        <img src="<?php echo base_url().'/upload/'.$mn->gambar ?>" class="card-img-top" alt="...">
          <div class="card-body">
            <h5 class="card-title"><?php echo $mn->nama_makanan ?></h5>
            <small><?php echo $mn->keterangan ?></small><br>
            <span class="badge badge-success">Rp. <?php echo number_format($mn->harga,0,',','.') ?></span><br>
            <?php echo anchor('dashboard/tambah_ke_pesanan/' .$mn->id_makanan,'<div class="btn btn-sm btn-primary">Tambah Ke Pesanan</div>') ?>
          </div>
      </div>

    <?php endforeach; ?>
  </div>
</div>