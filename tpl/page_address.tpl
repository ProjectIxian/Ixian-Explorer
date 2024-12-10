<link rel="stylesheet" href="css/address.css"/>

<section class="pageContainer">
    <div class="bg-1">
        <section class="pageLimitWrapper addressPage">
            <h1 class="med-title">Address Details</h1>
            <div class="addressCard">
                <p class="small-title t-gray">QR Code</p>
                <div id="qrcode" class="qrCode"></div>
                <div class="singleInfo">
                    <?php
                      $tag = "";
                      // known_wallets
                      if(array_key_exists($this->walletid, $this->known_wallets)) {
                    $tag_name = $this->known_wallets[$this->walletid][0];
                    $tag_color = $this->known_wallets[$this->walletid][1];
                    $tag = "<span class=\"badge badge-$tag_color\">$tag_name</span>";
                    }
                    ?>
                    <p class="small-title t-gray">Address</p>
                    <span><?php echo $tag;?> <b><code><?php echo $this->walletid; ?></code></b></span>
                </div>
                <div class="singleInfo">
                    <p class="small-title t-gray">Balance</p>
                    <p><?php echo number_format($this->balance, 8);?> IXI</p>
                </div>
            </div>
            <div>
                <h2 class="med-title">Transactions (<?php echo number_format($this->txcount,0); ?>)</h2>
                <div class="table-responsive">
                    <table id="ttx" class="table myTable">
                        <thead class="thead myTableHead">
                        <tr>
                            <th scope="col" class="myTh" style="width: 150px">Date</th>
                            <th scope="col" class="myTh">Hash</th>
                            <th scope="col" class="myTh" style="width: 10%">Type</th>
                            <th scope="col" class="myTh" style="width: 30%">Amount</th>
                        </tr>
                        </thead>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</section>

    
<script src="js/qrcode.min.js"></script>
<script type="text/javascript">
    new QRCode(document.getElementById("qrcode"), "<?php echo $this->walletid; ?>");
</script>
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