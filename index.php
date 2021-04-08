<?php
/*if(empty($_SERVER['HTTPS']) || $_SERVER['HTTPS'] == "off"){
    $redirect = 'https://' . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
    header('HTTP/1.1 301 Moved Permanently');
    header('Location: ' . $redirect);
    exit();
}*/
    include'functions.php';
?>
<!DOCTYPE html>
<html lang="id">
  <head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <meta name="description" content="pemilihan ketua himtif"/>
    <meta name="keywords" content="E-Voting, Pemilihan Umum, Pemilihan Pemimpin HIMTIF, Tugas Akhir, Skripsi, Jurnal, Source Code, PHP, MySQL, CSS, JavaScript, Bootstrap, jQuery"/>
    <meta name="author" content="https://www.youtube.com/channel/UC4O7jeICjUTUAydu5xsG1ag"/>
    <link rel="icon" href="logounpam.png"/>
    <link rel="canonical" href="#" />
    
    <script language='JavaScript'>
var txt="PEMILIHAN HIMTIF - ";
var speed=300;
var refresh=null;
function action() { document.title=txt;
txt=txt.substring(1,txt.length)+txt.charAt(0);
refresh=setTimeout("action()",speed);}action();
</script>
    <link href="assets/css/journal-bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/css/general.css" rel="stylesheet"/>       
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>               
  </head>  
<body>
    <div class="container">  
        <header style="background: url(header.png); height: 210px;"> 
            <div class="row" >
                <div class="col-md-3">
                    
                </div>
                <div class="col-md-6"></div>
                <div class="col-md-3"></div>
            </div>
        </header>
        <nav class="navbar navbar-default navbar-static-top">
        <div class="container-fluid">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="?">VOTING HIMTIF</a>
            </div>

            <div id="navbar" class="navbar-collapse collapse">
              <ul class="nav navbar-nav">
              <?php if($_SESSION['level']!=='admin'): ?>
              <li><a href="?m=pilkada"><span class="glyphicon glyphicon-inbox"></span> HIMTIF</a></li>
              <li><a href="?m=tanda_terima"><span class="glyphicon glyphicon-pushpin"></span> PILIH CALON</a></li>
              <li><a href="?m=daftar_peserta"><span class="glyphicon glyphicon-glyphicon glyphicon-user"></span> CALON PEMIMPIN HIMTIF</a></li>
              <li><a href="?m=hasil_voting"><span class="glyphicon glyphicon-glyphicon glyphicon-signal"></span> HASIL VOTING</a></li>
              <?php endif?>
                          


              <?php if($_SESSION['level']=='admin'):?>
                <li><a href="?m=pencalon"><span class="glyphicon glyphicon-user"></span> Pencalon</a></li>
                <li><a href="?m=pemilih"><span class="glyphicon glyphicon-th-large"></span> Pemilih</a></li>                
              <?php endif ?>                                          
              </ul>

              <ul class="nav navbar-nav navbar-right">
                            <?php if($_SESSION['level']!='admin' || !$_SESSION['login']):?>
              <li><a href="?m=login"><span class="glyphicon glyphicon-tasks"></span> </a></li>
              <?php endif?> 
              
              <?php if($_SESSION['login']):?>
                <li><a href="?m=password"><span class="glyphicon glyphicon-lock"></span> Password</a></li>
                <li><a href="aksi.php?act=logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
              <?php endif ?> 
              </ul>
            </div><!--/.nav-collapse -->
        </div>
        </nav>          
        <div class="">
            <?php
                if(file_exists($mod.'.php')){
                    if($mod=='tanda_terima' && $_SESSION['level']!='pemilih'){
                        redirect_js('?m=login_pemilih');
                    } else {
                        include $mod.'.php';
                    }                               
                }else
                    include 'pilkada.php';
            ?>
        </div>                          
    </div>
    <footer class="footer">
      <div class="container">
        <p>Copyright &copy; <?=date('Y')?> @redo @eko @tofik <em class="pull-right">Diupdate tanggal 10 April 2021</em></p>
      </div>
    </footer>
    </body>
</html>