<div class="container-fluid">
    <h3><i class="fas fa-edit"></i>EDIT MENU</h3>

    <?php foreach($menu as $mn) : ?>

    <form method="post" action="<?php echo base_url(). 'admin/daftar_menu/update' ?>">

        <div class="for-group">
            <label>Nama Makanan</label>
            <input type="text" name="nama_makanan" class="form-control"
            value="<?php echo $mn->nama_makanan ?>">
        </div>
        <div class="for-group">
            <label>Keterangan</label>
            <input type="hidden" name="id_makanan" class="form-control"
            value="<?php echo $mn->id_makanan ?>">
            <input type="text" name="keterangan" class="form-control"
            value="<?php echo $mn->keterangan ?>">
        </div>
        <div class="for-group">
            <label>Kategori</label>
            <input type="text" name="kategori" class="form-control"
            value="<?php echo $mn->kategori ?>">
        </div>
        <div class="for-group">
            <label>Harga</label>
            <input type="text" name="harga" class="form-control"
            value="<?php echo $mn->harga ?>">
        </div>
        <div class="for-group">
            <label>Persediaan</label>
            <input type="text" name="persediaan" class="form-control"
            value="<?php echo $mn->persediaan ?>">
        </div>

        <button type="submit" class="btn btn-primary btn-sm">Simpan</button>
        
    </form>
    <?php endforeach; ?>
</div>