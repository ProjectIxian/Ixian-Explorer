<div class="container-fluid">
    
    
<div class="row">
    <div class="col-12">

    <div class="card mb-4">
                <div class="card-header">
                    <div class="row">
                    <div class="col-md">
                        
                        <h1 class="h3 mb-0 text-gray-800">Block #<?php echo $this->blocknum;?></h1>
                    </div>
                    <div class="col-md">
                        
                        <div style="float:right">
                      <?php if($this->blocklasthash != "null") {?>

<a class="text-secondary" href="?p=block&id=<?php echo $this->blocklastnum;?>">
    <i class="fa fa-cube"></i> <?php echo $this->blocklastnum;?></a>
                            ---
                            <?php } ?>
                            
                            <span class="text-success"><i class="fa fa-cube"></i> <?php echo $this->blocknum;?></span> 
                            
                        <?php if($this->blocknextnum != 0) {?>
                            ---
<a class="text-secondary" href="?p=block&id=<?php echo $this->blocknextnum;?>">
    <i class="fa fa-cube"></i> <?php echo $this->blocknextnum;?></a>
                            <?php } ?>
                        </div>
                        
                    </div>
                        
                    </div>
                </div>
                <div class="card-body">

            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tbody>
                    <tr>
                      <td style="width: 100px">Hash</td>
                        <td class="text-wrap" style="max-width: 100px"><b><code><?php echo $this->blockhash; ?></code></b></td>
                    </tr>
                    <tr>
                      <td>Age</td>
                      <td><?php echo $this->blockage;?></td>
                    </tr>
                    <tr>
                      <td>Date</td>
                      <td><?php echo $this->blockdate;?></td>
                    </tr>
                    <tr>
                      <td>Version</td>
                      <td><?php echo $this->blockversion;?></td>
                    </tr>
                    <tr>
                      <td>Signatures</td>
                      <td><?php echo $this->blocksigs;?></td>
                    </tr>   
                    <tr>
                      <td>Transactions</td>
                      <td><?php echo $this->blocktxs;?></td>
                    </tr>
                    <tr>
                      <td>Block Time</td>
                      <td><?php echo $this->blocktime;?> seconds</td>
                    </tr>
                    <tr>
                      <td>Mining Reward</td>
                      <td><?php echo $this->miningreward;?> IXI</td>
                    </tr>
                      <?php if($this->blocklasthash != "null") {?>
                    <tr>
                      <td>Previous Block</td>
                        <td class="text-wrap" style="max-width: 100px"><a href="?p=block&id=<?php echo $this->blocklastnum;?>"><?php echo $this->blocklasthash;?></a></td>
                    </tr>
                      <?php } ?>
                    </tbody>
                </table>
            </div>
                    
                    
                                        

                    

                    
                </div>
              </div>    
    
    </div>
</div>
    
  
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
            'ordering' : true,
			'order': [[ 0, "desc" ]],
            'searching' : false,
            'serverSide' : true,
            'processing' : true,
            'autoWidth': false,
            'responsive': true,
            'ajax' : 'feeds/transactions.php?id=<?php echo $this->blocknum;?>'
        });
    }) 
    
</script>
    
    
