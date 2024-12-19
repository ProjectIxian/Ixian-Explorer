<link rel="stylesheet" href="css/block.css"/>
<link rel="stylesheet" href="css/transcation.css"/>


<section class="pageContainer">
    <div class="bg-1">
        <section class="pageLimitWrapper transactionPage">
            <div class="flexCGap8 maxW822">
                <h1 class="heading-xs mb-2">Transaction Details</h1>
                <div class="blockDetails">
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Hash</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">This hash represents the ID (TxID) of this transaction.</span>
                            </div>
                        </div>
                        <div class="t-red maxHash label-xs"><?php echo $this->txid; ?></div>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Age</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Determines how long ago this transaction was processed and added to the block.</span>
                            </div>
                        </div>
                        <p><?php echo $this->txage;?></p>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Date</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Exact timestamp of when the block was added to the blockchain.</span>
                            </div>
                        </div>
                        <p><?php echo $this->txdate;?></p>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Version</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Current version of TX.</span>
                            </div>
                        </div>
                        <p><?php echo $this->txversion;?></p>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Block</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Exact block that contains this transaction.</span>
                            </div>
                        </div>
                        <a href="?p=block&id=<?php echo $this->txapplied;?>" class="t-blue maxHash"><?php echo number_format($this->
                            txapplied);?></a>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Type</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Determines the type of this particular transaction.</span>
                            </div>
                        </div>
                        <p><?php echo $this->txtype;?></p>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Amount</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">Full amount of this transaction.</span>
                            </div>
                        </div>
                        <p class="t-red"><?php echo $this->txamount;?></p>
                    </div>
                    <div class="singleDetail">
                        <div class="tooltipWrapperHelper">
                            <p>Fee</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="myTooltip">The calculated fee that was required to process this transaction.</span>
                            </div>
                        </div>
                        <p><?php echo $this->txfee;?></p>
                    </div>
                </div>
            </div>
            <div class="fromToSection">
                <div class="singleColumn">
                    <h2 class="heading-xs">From</h2>
                    <?php
                        foreach ($this->fromArr as $key => $value) { ?>
                    <div class="smallTxInfo">
                        <a href="?p=address&id=<?php echo $key; ?>" class="t-blue maxHash label-sm"><?php echo $key; ?></a>
                        <p class="t-red label-sm"><?php echo number_format($value,8); ?> IXI</p>
                    </div>
                    <?php
                        }
                    ?>
                </div>
                <div class="singleColumn">
                    <h2 class="heading-xs">To</h2>
                    <?php
                        foreach ($this->toArr as $key => $value) { ?>
                    <div class="smallTxInfo">
                        <a href="?p=address&id=<?php echo $key; ?>" class="t-blue maxHash label-sm"><?php echo $key; ?></a>
                        <p class="t-green label-sm"><?php echo number_format($value,8); ?> IXI</p>
                    </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </section>
    </div>
</section>