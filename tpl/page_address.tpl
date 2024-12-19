<link rel="stylesheet" href="css/address.css"/>

<section class="pageContainer">
    <div class="bg-1 addressWrapper">
        <section class="pageLimitWrapper addressPage">
            <div class="maxW822 flexCGap8">
                <h1 class="heading-xs">Address Details</h1>
                <div class="addressCard">
                    <div class="tooltipWrapperHelper">
                        <p class="label-sm t-gray">QR Code</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="myTooltip">This QR code contains the IXI address. You can scan it using your IXI wallet.</span>
                        </div>
                    </div>
                    <div id="qrcode" class="qrCode"></div>
                    <div class="singleInfo">
                        <?php
                      $tag = "";
                      // known_wallets
                      if(array_key_exists($this->walletid, $this->known_wallets)) {
                        $tag_name = $this->known_wallets[$this->walletid][0];
                        $tag_color = $this->known_wallets[$this->walletid][1];
                        $tag = "<span class=\"walletBadge wallet-tag-$tag_color \">$tag_name</span>";
                        }
                        ?>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Address</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">The address in alpha-numeric form.</span>
                            </div>
                        </div>
                        <span class="label-md"><?php echo $tag;?> <b><code id="walletAddress"><?php echo $this->walletid; ?></code></b> <i onclick="copyToClipboard()" class="fa fa-copy t-icon-1 ml-1"></i></span>
                    </div>
                    <div class="singleInfo">
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Balance</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Current IXI balance of this address.</span>
                            </div>
                        </div>
                        <p class="heading-xs"><?php echo number_format($this->balance, 8);?> IXI</p>
                    </div>
                </div>
            </div>
            <div class="w-100 flexCGap8">
                <h2 class="heading-xs">Transactions (<?php echo number_format($this->txcount,0); ?>)</h2>
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
    function copyToClipboard() {
        const walletAddress = document.getElementById('walletAddress').innerText;

        navigator.clipboard.writeText(walletAddress)
            .then(() => {
                return;
            })
            .catch(err => {
                console.error('Failed to copy text: ', err);
            });
    }
</script>
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