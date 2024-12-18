<link rel="stylesheet" href="css/block.css"/>

<section class="pageContainer">
    <div class="bg-1">
        <section class="pageLimitWrapper blockPage">
            <h1 class="heading-xs">Block Height</h1>
            <div class="heightInfo">
                <p class="heading-sm">#<?php echo $this->blocknum;?></p>
                <div class="blocks">
                    <div class="singleBlock">
                        <img src="gfx/icons/grid_view.svg" alt="grid_view" />
                        <?php if($this->blocklasthash != "null") {?>
                        <a href="?p=block&id=<?php echo $this->blocklastnum;?>" class="label-sm prevNextText"><?php echo $this->blocklastnum;?></a>
                        <?php } ?>
                    </div>
                    <i class="fa fa-arrow-left-long t-gray"></i>
                    <div class="singleBlock">
                         <img src="gfx/icons/widgets.svg" alt="widgets" />
                        <p class="label-sm"><?php echo $this->blocknum;?></p>
                    </div>
                    <i class="fa fa-arrow-right-long t-gray"></i>
                    <div class="singleBlock">
                        <img src="gfx/icons/grid_view.svg" alt="grid_view" />
                        <?php if($this->blocknextnum != "null") {?>
                        <a href="?p=block&id=<?php echo $this->blocknextnum;?>" class="label-sm prevNextText"><?php echo $this->blocknextnum;?></a>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <h1 class="heading-xs">Block Details</h1>
            <div class="blockDetails">
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Block Hash</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <div class="t-red maxHash label-xs"><?php echo $this->blockhash; ?></div>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Age</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blockage;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Date</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blockdate;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Version</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blockversion;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Signatures</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blocksigs;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Signatures Required</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->requiredsigs;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Transactions</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blocktxs;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Block Time</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->blocktime;?> seconds</p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Mining Reward</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->miningreward;?> IXI</p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Signing Difficulty</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->totalsignerdifficulty;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Signing Difficulty Required</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->requiredsignerdifficulty;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Previous Block</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <a href="?p=block&id=<?php echo $this->blocklastnum;?>" class="t-blue maxHash label-xs"><?php echo $this->blocklasthash;?></a>
                </div>
            </div>
            <h1 class="heading-xs">Block Transactions (<?php echo $this->blocktxs;?>)</h1>
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
        </section>
    </div>
</section>

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
    
    
