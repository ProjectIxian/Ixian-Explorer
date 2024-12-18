<link rel="stylesheet" href="vendor/bootstrap-cookie-alert/cookiealert.css">
<link rel="stylesheet" href="css/home.css"/>

<section class="pageContainer">
    <div class="pageLimitWrapper homeHero">
        <div class="home-search">
            <h1 class="heading-lg">Welcome to ixiscope</h1>
            <p class="body-lg">The official <span class="label-lg">Block Explorer</span> for the Ixian Platform.</p>
            <form class="inputContainer" method="get">
                <input type="hidden" name="p" value="search"/>
                <input class="input" aria-label="Search" name="q" value="<?php echo $this->q;?>" type="text" placeholder="Type or paste blocks, addresses or transaction ID"/>
                <button type="submit" class="button btn-p label-md">Go <i class="fa fa-arrow-right"></i></button>
            </form>
            <p class="label-sm t-gray">Use the search bar to scan for transactions, wallets, names and blocks.</p>
        </div>

        <!-- Statistics data cards -->
        <div class="cardGroup">
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->supply;?></p>
                    <div class="tooltipWrapperHelper">
                        <p class="label-sm t-gray">IXI Circulating Supply</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>

                </div>
                <div>
                    <img src="gfx/icons/ixian_logo.svg" alt="ixi" />
                </div>
            </div>
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->m;?></p>
                    <div class="tooltipWrapperHelper">
                    <p class="label-sm t-gray">Active IXI DLT Nodes</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="gfx/icons/linked_services.svg" alt="linked_services" />
                </div>
            </div>
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->hashrate;?></p>
                    <div class="tooltipWrapperHelper">
                        <p class="label-sm t-gray">Estimated Hash-rate (h/s)</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="gfx/icons/charger.svg" alt="charger" />
                </div>
            </div>

            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->tx24;?></p>
                    <p class="label-sm t-gray">Transactions Last 24H</p>
                </div>
                <div>
                    <img src="gfx/icons/history.svg" alt="history" />
                </div>
            </div>
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->txavg;?></p>
                    <div class="tooltipWrapperHelper">
                        <p class="label-sm t-gray">Average Transactions Per Day</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="gfx/icons/avg_pace.svg" alt="avg_pace" />
                </div>
            </div>
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->txtotal;?></p>
                    <p class="label-sm t-gray">On-chain Transactions</p>
                </div>
                <div>
                    <img src="gfx/icons/sync_alt.svg" alt="sync_alt" />
                </div>
            </div>
        </div>
    </div>

    <div class="bg-1">
        <section class="blocks-wrapper pageLimitWrapper">
            <div class="blocks-wrapper-header">
                <h4 class="heading-sm">Latest Blocks</h4>
                <div class="what-are-blocks">
                    <p class="label-md">What are blocks</p>
                    <i class="fa fa-question-circle"></i>
                </div>
            </div>
            <div class="table-responsive">
                <table id="tblocks" class="table myTable">
                    <thead class="myTableHead">
                    <tr>
                        <th scope="col" class="myTh" style="width: 100px">Block Height</th>
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
    <div class="alert text-center cookiealert d-flex flex-column justify-content-center align-items-center" role="alert">
        <div>
            <p class="label-md">&#x1F36A; We use cookies to ensure you get the best experience on our website.</p>
            <a href="https://www.ixian.io/?page=cookie" target="_blank">Learn more</a>
        </div>
        <button type="button" class="button btn-p label-md acceptcookies">
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