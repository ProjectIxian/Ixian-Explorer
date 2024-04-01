<div class="container-fluid">
    
<div class="d-sm-flex align-items-center justify-content-between mb-4">
</div>

    
<div class="row">
    <div class="col-12">

    <div class="card mb-4">
                <div class="card-header">
                        <h1 class="h3 mb-0 text-gray-800">Transaction</h1>
                </div>
                <div class="card-body">

            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <tbody>
                    <tr>
                      <td style="width: 100px">Hash</td>
                        <td class="text-wrap" style="max-width: 100px"><b><code><?php echo $this->txid; ?></code></b></td>
                    </tr>
                    <tr>
                      <td>Age</td>
                      <td><?php echo $this->txage;?></td>
                    </tr>
                    <tr>
                      <td>Date</td>
                      <td><?php echo $this->txdate;?></td>
                    </tr>
                    <tr>
                      <td>Version</td>
                      <td><?php echo $this->txversion;?></td>
                    </tr>
                    <tr>
                      <td>Block</td>
                        <td><a href="?p=block&id=<?php echo $this->txapplied;?>"><?php echo $this->txapplied;?></a></td>
                    </tr>   
                    <tr>
                      <td>Type</td>
                      <td><?php echo $this->txtype;?></td>
                    </tr>
                    <tr>
                      <td>Amount</td>
                        <td><code><b><?php echo $this->txamount;?></b></code></td>
                    </tr>
                    <tr>
                      <td>Fee</td>
                      <td><?php echo $this->txfee;?></td>
                    </tr>
                    </tbody>
                </table>
            </div>                    
                                       
                </div>
              </div>    
    
    </div>
</div>    
    
    
<div class="row">
    <div class="col-6">

        <div class="card mb-4">
                <div class="card-header text-right">
                        From
                </div>
                <div class="card-body">
                    <?php 
                        foreach ($this->fromArr as $key => $value) { ?>
                        <div class="row">
                            <div class="col text-truncate text-right">
                            <b><a href="?p=address&id=<?php echo $key; ?>"><?php echo $key; ?></a></b>
                            <code><div class="text-danger">-<?php echo number_format($value,8); ?> IXI</div></code>
                            </div>
                        </div>
                    
                        <hr/>
                    <?php 
                        } 
                    ?>
                    
                    
                    
                </div>    
        </div>
    </div>
    
    <div class="col-6">

        <div class="card mb-4">
                <div class="card-header">
                        To
                </div>
                <div class="card-body">
                    <?php 
                        foreach ($this->toArr as $key => $value) { ?>
                        <div class="row">
                            <div class="col text-truncate">
                            <b><a href="?p=address&id=<?php echo $key; ?>"><?php echo $key; ?></a></b>
                                <code><div class="text-success"><?php echo number_format($value,8); ?> IXI</div></code>
                            </div>
                        </div>
                        <hr/>
                    <?php 
                        } 
                    ?>
                </div>    
        </div>
    </div>    
    
</div>
    
    
    
</div><!-- Page Content -->

