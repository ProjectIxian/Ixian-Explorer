<link rel="stylesheet" href="vendor/bootstrap-cookie-alert/cookiealert.css">

<div class="container-fluid"> 
    
    
    
 <div class="row">

            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">IxiCash Supply</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->supply;?> IXI</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-coins fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
     
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Active DLT Nodes</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->m;?></div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-server fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
     
              
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Estimated Hashrate</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->hashrate;?> h/s</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-bolt fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>       
</div>
    
    
        <!-- Transaction stats -->
          <p class="mb-4"></p>
            
            <div class="row">
     
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="The total amount of transactions recorded by the block explorer" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Total Transactions
                        <i class="fas fa-info-circle"></i>
                        </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->txtotal;?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
             
           
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="The number of transactions in the past 24 hours" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">24h Transactions
                        <i class="fas fa-info-circle"></i>
                        </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->tx24;?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
             
     
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="The average number of transactions per day for the past 30 days" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Average transactions per Day
                        <i class="fas fa-info-circle"></i>
                        </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->txavg;?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
                
</div>


    
<h4>Blocks</h4>
<div class="table-aresponsive">
<table id="tblocks" class="table table-sm1 table-fixed">
            <thead class="thead-dark">
                <tr>
                    <th style="width: 60px">Height</th>
                    <th>Hash</th>
                    <th style="width: 22%">Added</th> 
                    <th style="width: 12%">Txs</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
</table>
</div>
    

<!-- START Bootstrap-Cookie-Alert -->
<div class="alert text-center cookiealert" role="alert">
    <b>Do you like cookies?</b> &#x1F36A; We use cookies to ensure you get the best experience on our website. <a href="https://www.ixian.io/?page=cookie" target="_blank">Learn more</a>

    <button type="button" class="btn btn-primary btn-sm acceptcookies">
        I agree
    </button>
</div>
<!-- END Bootstrap-Cookie-Alert -->    
    
</div><!-- Page Content -->


<script src="vendor/bootstrap-cookie-alert/cookiealert.js"></script>
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<script>
    var etbl;
    $(function () {
        $etbl = $('#tblocks').DataTable({
            'paging' : true,
            'pagingType': 'numbers',
            'lengthChange' : false,
            'info' : false,
            'ordering' : true,
			'order': [[ 0, "desc" ]],
            'searching' : false,
            'serverSide' : true,
            'processing' : true,
            'autoWidth': false,
            'ajax' : 'feeds/blocks.php'
        });
    }) 
    
</script>