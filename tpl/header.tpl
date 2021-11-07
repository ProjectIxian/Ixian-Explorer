<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Ixian Block Explorer</title>
    <meta name="description" content="Ixian is a fully scalable, decentralized platform that enables encrypted data streaming and high volume of micro-transactions.">
    <meta name="keywords" content="Ixian,DLT,Blockchain,Cryptocurrency,Crypto,IxiCash,Explorer,Spixi">

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <link href="css/sb-admin-2.css" rel="stylesheet">
    <link href="css/explorer.css" rel="stylesheet">

    <link href="vendor/datatables/dataTables.bootstrap4.min.css" rel="stylesheet">  

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/popper.min.js"></script>    
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    
</head>
    
    
    
    
    
<body id="page-top">
  <!-- Page Wrapper -->
  <div id="wrapper">
      
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">
          
          
        <nav class="navbar navbar-expand-lg navbar-light bg-white  mb-4  shadow sticky-top"> 
                  <a class="navbar-brand" href="index.php">
                      <img src="gfx/ixi.png" style="padding: 0px; height: 24px; vertical-align: middle;"/>
                      Ixian Block Explorer</a>
     <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
     
       <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <!-- Topbar Search -->
              <form method="get" class="mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                <div class="input-group">
                    <input type="hidden" name="p" value="search"/>
                  <input type="text" name="q" class="form-control bg-light border-0 small" placeholder="Search for address, transaction id, block number..." aria-label="Search" aria-describedby="basic-addon2" value="<?php echo $this->q;?>">
                  <div class="input-group-append">
                    <button class="btn btn-primary" type="submit">
                      <i class="fas fa-search fa-sm"></i>
                    </button>
                  </div>
                </div>
              </form>
     
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link text-primary" href="index.php">Blocks</a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-primary" href="?p=nodes">Nodes</a>
            </li>        
            <li class="nav-item">
                <a class="nav-link text-primary" href="?p=network">Statistics</a>
            </li>
            <li class="nav-item">
                <a class="nav-link text-primary" href="?p=top">Top 20</a>
            </li>             
            <li class="nav-item">
                <a class="nav-link text-primary" href="?p=emissions">IxiCash Emissions</a>
            </li>             
        </ul>
           
     </div>
    </nav>
