<?php
$row = $db->get_row("SELECT * FROM tb_pemilih WHERE id_pemilih='$_SESSION[id_pemilih]'");
?>
<div class="page-header">
    <h1>Data Identitas Pemilih HIMTIF</h1>
</div>
<table class="table table-bordered aw">
    <tr>
        <td>Nama Pemilih</td>
        <td><?=$row->nama_pemilih?></td>
    </tr>
    <tr>
        <td>NIM</td>
        <td><?=$row->ktp?></td>
    </tr>
    <tr>
        <td>Alamat</td>
        <td><?=$row->alamat?></td>
    </tr>
</table>
<?php 
$sekarang = time();
$batas = mktime(23, 0, 0);

if($sekarang > $batas):?>
<p>Maaf pemilihan berakhir pukul <?=date('H-i-s', $batas)?> WIB</p>
<?php else:?>
<a class="btn btn-primary" href="?m=tanda_terima&act=pilih">Lanjutkan <span class="glyphicon glyphicon-chevron-right"></span></a>
<?php endif;?>