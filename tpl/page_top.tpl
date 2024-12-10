<script src="vendor/chart.js/Chart.min.js"></script>
<link rel="stylesheet" href="css/top20.css"/>
<link rel="stylesheet" href="css/statistics.css"/>

<section class="pageContainer">
    <div class="top20Header pageLimitWrapper">
        <div>
            <h1 class="heading-4">Top 20 Addresses</h1>
            <p class="body-text">List of 20 wallet addresses that contain most IXI tokens</p>
        </div>
        <div class="topCards">
            <div class="topCardsLeft">
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
                        <p class="heading-5"><?php echo $this->totalAmount;?></p>
                        <p class="small-title t-gray">Top 20 Wallet Amount (excluding foundation and exchange wallets)</p>
                    </div>
                    <div>
                        <i class="fas fa-coins fa-2x"></i>
                    </div>
                </div>
            </div>
                <div class="blockStatusCard ixiDistribution">
                    <div class="blockStatusCardHeader">
                        <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                        <div>
                            <h3 class="heading-5">IXI Distribution</h3>
                            <p class="body-text">Data bellow shows distribution with genesis and exchange wallets included.</p>
                        </div>
                    </div>
                    <div>
                        <div class="chart-area">
                            <canvas id="chart-0"></canvas>
                        </div>
                    </div>
                </div>
        </div>
    </div>
    <div class="bg-1">
        <section class="top20Wallets pageLimitWrapper flexCGap32">
            <h4 class="heading-5">Top 20 Wallets</h4>
            <div class="table-responsive">
                <table id="ttx" class="table myTable">
                    <thead class="thead myTableHead">
                    <tr>
                        <th scope="col" class="myTh" style="width: 30px">Rank</th>
                        <th scope="col" class="myTh">Address</th>
                        <th scope="col" class="text-right myTh">Balance</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php
                    $pos = 1;
                    foreach($this->data as $addr) {
                    $tag = "";
                    // known_wallets
                    $address = $addr['address'];
                    if(array_key_exists($address, $this->known_wallets)) {
                    $tag_name = $this->known_wallets[$address][0];
                    $tag_color = $this->known_wallets[$address][1];
                    $tag = "<span class=\"badge badge-$tag_color\">$tag_name</span>";
                    }
                    ?>
                    <tr>
                        <td class="myTd small-title">#<?php echo $pos;?></td>
                        <td class="text-truncate myTd" style="max-width: 300px;">
                            <?php echo $tag;?> <a href="index.php?p=address&id=<?php echo $address;?>"><?php echo $address;?></a>
                        </td>
                        <td class="text-right myTd t-gray"><?php echo number_format($addr["amount"], 8)." IXI";?></td>
                    </tr>

                    <?php
                        $pos++;
                    }
                ?>
                    </tbody>
                </table>
            </div>
        </section>
    </div>

</section>

<script>

var ctx = document.getElementById("chart-0");
var myPieChart = new Chart(ctx, {
  type: 'doughnut',
  data: {
    labels: ["Top 20", "Other Wallets", "Locked Premine", "Unlocked Premine"],
    datasets: [{
      data: [<?php echo $this->w100num;?>, <?php echo $this->othernum;?>, <?php echo $this->lockedpreminenum;?>, <?php echo $this->unlockedpreminenum;?>],
      backgroundColor: ['#4e73df', '#1cc88a', '#FF0000', '#FFFF00'],
      hoverBackgroundColor: ['#2e59d9', '#17a673', '#FF0000', '#FFFF00'],
      hoverBorderColor: "rgba(234, 236, 244, 1)",
    }],
  },
  options: {
    maintainAspectRatio: false,
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: true,
      caretPadding: 10,
    },
    legend: {
      display: true
    },
    cutoutPercentage: 70,
  },
}); 
</script>
