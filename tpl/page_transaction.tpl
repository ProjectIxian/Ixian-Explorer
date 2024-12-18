<link rel="stylesheet" href="css/block.css"/>
<link rel="stylesheet" href="css/transcation.css"/>


<section class="pageContainer">
    <div class="bg-1">
        <section class="pageLimitWrapper transactionPage">
            <h1 class="heading-xs">Transaction Details</h1>
            <div class="blockDetails">
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Hash</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <div class="t-red maxHash label-xs"><?php echo $this->txid; ?></div>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Age</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->txage;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Date</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->txdate;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Version</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->txversion;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Block</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <a href="?p=block&id=<?php echo $this->txapplied;?>" class="t-blue maxHash"><?php echo $this->
                        txapplied;?></a>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Type</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->txtype;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Amount</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p class="t-red"><?php echo $this->txamount;?></p>
                </div>
                <div class="singleDetail">
                    <div class="tooltipWrapperHelper">
                        <p>Fee</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                    <p><?php echo $this->txfee;?></p>
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