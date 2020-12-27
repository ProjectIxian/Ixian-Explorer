<script src="vendor/chart.js/Chart.min.js"></script>


<div class="container-fluid">

 <div class="row">
            <div class="col-6">
                <div class="row">
            <!-- Card -->
            <div class="col-12 mb-4">
              <div class="card border-left-success shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-success text-uppercase mb-1">IxiCash Supply</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->supply;?> IXI</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-coins fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
                <div class="row">

                
            <!-- Card -->
            <div class="col-12 mb-4">
              <div class="card border-left-primary shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Top 20 Amount</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->totalAmount;?> IXI</div>
                                </div>
                                <div class="col-auto">
                                    <i class="fas fa-trophy fa-2x text-gray-300"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
     </div>
            <!-- Card -->
            <div class="col-6 mb-4">
              <div class="card border-left-secondary shadow h-100 py-2">
                <div class="card-body">
                     <div class="row no-gutters align-items-center">
                    <div class="col ">
                      <div class="text-xs font-weight-bold text-secondary text-uppercase mb-1">IXI Distribution</div>
                        <canvas id="chart-0" style="max-height: 150px;"></canvas>

                         </div>
                    </div>
    
                    

                </div>
                </div>
            </div>
          
     
</div>
    
<h4>Top 20 Wallets</h4>
<div class="table-responsive">
<table id="ttx" class="table table-sm1 table-hover">
            <thead class="thead-dark">
                <tr>
                    <th style="width: 30px">Rank</th>
                    <th>Address</th>
                    <th class="text-right">Balance</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $pos = 1;
                    foreach($this->data as $addr) { ?>
                        <tr>
                            <td>#<?php echo $pos;?></td>
                            <td class="text-truncate" style="max-width: 300px;"><a  href="index.php?p=address&id=<?php echo $addr['address'];?>"><?php echo $addr["address"];?></a></td>
                            <td class="text-right"><?php echo number_format($addr["amount"], 8)." IXI";?></td>
                        </tr>

                <?php 
                        $pos++;
                    }
                ?>
            </tbody>
</table>
</div>
    
    
    
    
</div><!-- Page Content -->


<script>
    

Chart.defaults.global.defaultFontColor = '#858796';

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
