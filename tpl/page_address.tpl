<div class="container-fluid">
    
<div class="d-sm-flex align-items-center justify-content-between mb-4">
</div>
    
<div class="row">
    <div class="col-12">

    <div class="card mb-4">
                <div class="card-header">
                        <h1 class="h3 mb-0 text-gray-800">Address</h1>

                </div>
                <div class="card-body">

            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tbody>
                    <tr>
                      <td>Address</td>
                        <td class="text-wrap" style="max-width: 100px;"><b><code><?php echo $this->walletid; ?></code></b></td>
                    </tr>
                    <tr>
                      <td>QR Code</td>
                      <td><div id="qrcode" class="qrCode"></div></td>
                    </tr>
                    <tr>
                      <td>Transactions</td>
                      <td><?php echo number_format($this->txcount,0); ?></td>
                    </tr>
                    <!--<tr>
                        <td>Total Received</td>
                        <td><code><div class="text-success"><?php echo number_format($this->balance, 8);?> IXI</div></code></td>
                    </tr>
                    <tr>
                        <td>Total Sent</td>
                        <td><code><div class="text-danger"><?php echo number_format($this->balance, 8);?> IXI</div></code></td>
                    </tr>-->
                    <tr>
                        <td><b>Final Balance</b></td>
                        <td><code><div class="text-primary"><?php echo number_format($this->balance, 8);?> IXI</div></code></td>
                    </tr>


                    </tbody>
                </table>
            </div>
                    
                    
                                        

                    

                    
                </div>
              </div>    
    
    </div>
</div>
   
    
<script src="js/qrcode.min.js"></script>
<script type="text/javascript">
    new QRCode(document.getElementById("qrcode"), "<?php echo $this->walletid; ?>");
</script>
  
<h4>Transactions</h4>
<div class="table-responsive">
<table id="ttx" class="table table-sm1 ">
            <thead class="thead-dark">
                <tr>
                    <th style="width: 150px">Date</th>                    
                    <th>Hash</th>
                    <th style="width: 10%">Type</th>
                    <th style="width: 30%">Amount</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
</table>
</div>        
    
</div><!-- Page Content -->

<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<script>
    var etbl;
    $(function () {
        $etbl = $('#ttx').DataTable({
            'paging' : true,
            'pagingType': 'numbers',
            'lengthChange' : false,
            'info' : false,
            'ordering' : false,
			'order': [[ 0, "desc" ]],
            'searching' : false,
            'serverSide' : true,
            'processing' : true,
            'autoWidth': false,
            'responsive': true,
            'ajax' : {
                url: 'feeds/transactions.php?aid=<?php echo $this->adx;?>',
                 "data":function(outData){
                     return outData;
                 },
                 dataFilter:function(inData){
                     return inData;
                 },
                 error:function(err, status){
                     console.log(err);
                 },
            }
                                    
                                    
                                    
        });
    }) 
    
</script>