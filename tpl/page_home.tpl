<link rel="stylesheet" href="vendor/bootstrap-cookie-alert/cookiealert.css">
<link rel="stylesheet" href="css/home.css"/>

<section class="pageContainer">
    <div class="pageLimitWrapper mb-4">
        <div class="home-search">
            <h1 class="heading-4">Welcome to Ixiscope</h1>
            <p class="body-text">The official <strong>Block Explorer</strong> for the Ixian Platform.</p>
            <form class="inputContainer" method="get">
                <input type="hidden" name="p" value="search"/>
                <input class="input" aria-label="Search" name="q" value="<?php echo $this->q;?>" type="text" placeholder="Type or pate blocks, addresses or transaction ID"/>
                <button type="submit" class="button btn-p">Go <i class="fas fa-arrow-right"></i></button>
            </form>
            <p class="small-title t-gray">Use the search bar to scan for transactions, wallets, names and blocks.</p>
        </div>

        <!-- Statistics data cards -->
        <div class="cardGroup">
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->supply;?></p>
                    <p class="small-title t-gray">IXI Circulating Supply</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->m;?></p>
                    <p class="small-title t-gray">Active IXI DLT Nodes</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->hashrate;?></p>
                    <p class="small-title t-gray">Estimated Hash-rate (h/s)</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>

            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->tx24;?></p>
                    <p class="small-title t-gray">Transactions Last 24H</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->txavg;?></p>
                    <p class="small-title t-gray">Average Transactions Per Day</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->txtotal;?></p>
                    <p class="small-title t-gray">On-chain Transactions</p>
                </div>
                <div>
                    <i class="fas fa-coins fa-2x"></i>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-1">
        <section class="blocks-wrapper pageLimitWrapper">
            <div class="blocks-wrapper-header">
                <h4 class="heading-5">Latest Blocks</h4>
                <div class="what-are-blocks">
                    <p class="med-title">What are blocks</p>
                    <i class="fas fa-question-circle"></i>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tblocks" class="table myTable">
                    <thead class="thead myTableHead">
                    <tr>
                        <th scope="col" class="myTh" >Block Height</th>
                        <th scope="col" class="myTh" >Hash</th>
                        <th scope="col" class="myTh" style="max-width: 28px">Added to Blockchain</th>
                        <th scope="col" class="myTh" style="max-width: 28px">Transactions</th>
                    </tr>
                    </thead>
                    <tbody>
                    </tbody>
                </table>
            </div>
        </section>
    </div>

    <!-- START Bootstrap-Cookie-Alert -->
    <div class="alert text-center cookiealert" role="alert">
        <b>Do you like cookies?</b> &#x1F36A; We use cookies to ensure you get the best experience on our website. <a
                href="https://www.ixian.io/?page=cookie" target="_blank">Learn more</a>

        <button type="button" class="btn btn-primary btn-sm acceptcookies">
            I agree
        </button>
    </div>
    <!-- END Bootstrap-Cookie-Alert -->
</section><!-- Page Content -->


<script src="vendor/bootstrap-cookie-alert/cookiealert.js"></script>
<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<script>
    var etbl;
    $(function () {
        $etbl = $('#tblocks').DataTable({
            'paging': true,
            'pagingType': 'numbers',
            'lengthChange': false,
            'info': false,
            'ordering': true,
            'order': [[0, "desc"]],
            'searching': false,
            'serverSide': true,
            'processing': true,
            'autoWidth': false,
            'ajax': 'feeds/blocks.php'
        });
    })
</script>