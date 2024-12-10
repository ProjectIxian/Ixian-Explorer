<link rel="stylesheet" href="css/block.css"/>
<link rel="stylesheet" href="css/transcation.css"/>


<section class="pageContainer">
    <div class="bg-1">
        <section class="pageLimitWrapper transactionPage">
            <h1 class="heading-4">Transaction Details</h1>
            <div class="blockDetails">
                <div class="singleDetail">
                    <p>Hash</p>
                    <div class="t-red maxHash"><?php echo $this->txid; ?></div>
                </div>
                <div class="singleDetail">
                    <p>Age</p>
                    <p><?php echo $this->txage;?></p>
                </div>
                <div class="singleDetail">
                    <p>Date</p>
                    <p><?php echo $this->txdate;?></p>
                </div>
                <div class="singleDetail">
                    <p>Version</p>
                    <p><?php echo $this->txversion;?></p>
                </div>
                <div class="singleDetail">
                    <p>Block</p>
                    <a href="?p=block&id=<?php echo $this->txapplied;?>" class="t-blue maxHash"><?php echo $this->
                        txapplied;?></a>
                </div>
                <div class="singleDetail">
                    <p>Type</p>
                    <p><?php echo $this->txtype;?></p>
                </div>
                <div class="singleDetail">
                    <p>Amount</p>
                    <p class="t-red"><?php echo $this->txamount;?></p>
                </div>
                <div class="singleDetail">
                    <p>Fee</p>
                    <p><?php echo $this->txfee;?></p>
                </div>
            </div>
            <div class="fromToSection">
                <div class="singleColumn">
                    <h2 class="heading-5">From</h2>
                    <?php
                        foreach ($this->fromArr as $key => $value) { ?>
                    <div class="smallTxInfo">
                        <a href="?p=address&id=<?php echo $key; ?>" class="t-blue maxHash"><?php echo $key; ?></a>
                        <p class="t-red"><?php echo number_format($value,8); ?> IXI</p>
                    </div>
                    <?php
                        }
                    ?>
                </div>
                <div class="singleColumn">
                    <h2 class="heading-5">To</h2>
                    <?php
                        foreach ($this->toArr as $key => $value) { ?>
                    <div class="smallTxInfo">
                        <a href="?p=address&id=<?php echo $key; ?>" class="t-blue maxHash"><?php echo $key; ?></a>
                        <p class="t-red"><?php echo number_format($value,8); ?> IXI</p>
                    </div>
                    <?php
                        }
                    ?>
                </div>
            </div>
        </section>
    </div>
</section>