<script src="vendor/chart.js/Chart.min.js"></script>
		
        <!-- Begin Page Content -->
        <div class="container-fluid">

        <!-- Mining status -->    
        <h1 class="h3 mb-2 text-gray-800">Mining Statistics</h1>
          
         <div class="row">
     
            <!-- Card -->
            <div class="col-xl-3 col-md-3 mb-3">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Network Blockheight</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800">#<?php echo $this->bh;?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
             
            <!-- Card -->
            <div class="col-xl-3 col-md-3 mb-3">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="This represents the percentage of unsolved blocks in the redacted window (up to last 20000 blocks). Every miner can choose to mine any block in the redacted window that hasn't been solved yet. Target ratio is 50%" class="text-xs font-weight-bold text-info text-uppercase mb-1">Unsolved Blocks
                          
                          <i  class="fas fa-info-circle"></i>
                          
                        </div>
                      <div class="row no-gutters align-items-center">
                        <div class="col-auto">
                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><?php echo number_format($this->blockratio,2);?>%</div>
                        </div>
                        <div class="col">
                          <div class="progress progress-sm mr-2">
                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="<?php echo $this->blockratio;?>" aria-valuemin="0" aria-valuemax="100"></div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
             
            <!-- Card -->
            <div class="col-xl-3 col-md-3 mb-3">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Estimated Hashrate</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->hashrate;?> h/s</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
             
            <!-- Card -->
            <div class="col-xl-3 col-md-3 mb-3">
              <div class="card border-left-info shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Block Mining Reward</div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->miningreward;?> IXI</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>      
                  
</div>           

        
        <!-- Staking stats -->
        <h1 class="h3 mb-2 text-gray-800">Block Signing Statistics</h1>

            
            <div class="row">
     
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="The block signing reward is split equally between up to 1000 signers of the block" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Block Signing Reward
                        <i class="fas fa-info-circle"></i>
                        </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->blockstake;?> IXI</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>     
             
           
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="The first 1000 signers receive rewards proportionally with their signing hashrate" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Current Signers
                        <i class="fas fa-info-circle"></i>
                        </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->stakers;?></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
             
     
            <!-- Card -->
            <div class="col-xl-4 col-md-4 mb-4">
              <div class="card border-left-warning shadow h-100 py-2">
                <div class="card-body">
                  <div class="row no-gutters align-items-center">
                    <div class="col mr-2">
                      <div data-toggle="tooltip" title="Minimum required signatures for the last block accepted" class="text-xs font-weight-bold text-secondary text-uppercase mb-1">Required Signers
                        <i class="fas fa-info-circle"></i>
                      </div>
                                <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->requiredsigners;?> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> 
                
</div>
            
            
            
            
        <!-- Last blocks -->    
        <h1 class="h3 mb-2 text-gray-800">Ixian Block Charts</h1>
            
          <div class="row">
            <div class="col-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Blocks Status</h6>
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="chart-1"></canvas>
                  </div>
                  <hr>
                  Showing data for last <code><?php echo $this->numblocks;?></code> blocks.
                </div>
              </div>
            </div>
          </div>  

          <div class="row">
            <div class="col-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Blocks Signing Status</h6>
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="chart-2"></canvas>
                  </div>
                  <hr>
                  Showing data for last <code><?php echo $this->numblocks;?></code> blocks.
                </div>
              </div>
            </div>
          </div>             
            
          <div class="row">
            <div class="col-12">
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h6 class="m-0 font-weight-bold text-primary">Mining Status</h6>
                </div>
                <div class="card-body">
                  <div class="chart-area">
                    <canvas id="chart-0"></canvas>
                  </div>
                  <hr>
                  Showing data for last <code><?php echo $this->numblocks;?></code> blocks.
                </div>
              </div>
            </div>
          </div>
            
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


<script>
   
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})
    
    
var ctx = document.getElementById("chart-0");
var mininStatsChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [<?php echo $this->difflabels;?>],
    datasets: [{
      label: "Difficulty",
      lineTension: 0.10,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->diff; ?>],
        yAxisID: 'y-axis-1',
    },
              
{
      label: "Hashrate",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->hash; ?>],
    yAxisID: 'y-axis-2',
    }              
              
              ],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: true,
          drawBorder: true
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
							type: 'linear',
							display: false,
							position: 'left',
							id: 'y-axis-1',
						}, {
							type: 'linear', 
							display: false,
							id: 'y-axis-2',

							gridLines: {
								drawOnChartArea: false,
							},
						}],
    },
    legend: {
      display: true
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10
      
    }
  }
}); 
    
    
    
    
var ctx2 = document.getElementById("chart-1");
var blockStatsChart = new Chart(ctx2, {
  type: 'line',
  data: {
    labels: [<?php echo $this->difflabels;?>],
    datasets: [{
      label: "Block Time",
      lineTension: 0.10,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->blocktime; ?>],
        yAxisID: 'y-axis-1',
    },
              
{
      label: "Transactions",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->txcount; ?>],
    yAxisID: 'y-axis-2',
    },
              
{
      label: "Signers",
      lineTension: 0.3,
      backgroundColor: "rgba(223, 223, 115, 0.05)",
      borderColor: "rgba(223, 223, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(223, 223, 115, 1)",
      pointBorderColor: "rgba(223, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
      pointHoverBorderColor: "rgba(223, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->sigcount; ?>],
    yAxisID: 'y-axis-3',
    }           
              
              ],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: true,
          drawBorder: true
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
							type: 'linear',
							display: false,
							position: 'left',
							id: 'y-axis-1',
						}, {
							type: 'linear', 
							display: false,
							id: 'y-axis-2',

							gridLines: {
								drawOnChartArea: false,
							}}, {
							type: 'linear', 
							display: false,
							id: 'y-axis-3',

							gridLines: {
								drawOnChartArea: false,
							},
						}],
        
    },
    legend: {
      display: true
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10
      
    }
  }
}); 
       
    
var ctx3 = document.getElementById("chart-2");
var signingStatsChart = new Chart(ctx3, {
  type: 'line',
  data: {
    labels: [<?php echo $this->difflabels;?>],
    datasets: [{
      label: "Total Signer Difficulty",
      lineTension: 0.3,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->totalsigdiff; ?>],
        yAxisID: 'y-axis-1',
    },
              
{
      label: "Required Signer Difficulty",
      lineTension: 0.3,
      backgroundColor: "rgba(8, 153, 45, 0.05)",
      borderColor: "rgba(8, 153, 45, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(8, 153, 45, 1)",
      pointBorderColor: "rgba(8, 153, 45, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->reqsigdiff; ?>],
    yAxisID: 'y-axis-1',
    },
              
{
      label: "Signers",
      lineTension: 0.3,
      backgroundColor: "rgba(223, 223, 115, 0.05)",
      borderColor: "rgba(223, 223, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(223, 223, 115, 1)",
      pointBorderColor: "rgba(223, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
      pointHoverBorderColor: "rgba(223, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->sigcount; ?>],
    yAxisID: 'y-axis-3',
    },
              
      {
          label: "Required Signers",
          lineTension: 0.3,
                    backgroundColor: "rgba(223, 183, 115, 0.05)",
                    borderColor: "rgba(223, 183, 115, 1)",
                    pointRadius: 1,
                    pointBackgroundColor: "rgba(223, 183, 115, 1)",
                    pointBorderColor: "rgba(223, 183, 115, 1)",
                    pointHoverRadius: 1,
                    pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
                    pointHoverBorderColor: "rgba(223, 115, 223, 1)",
                    pointHitRadius: 1,
                    pointBorderWidth: 1,
                    data: [<?php echo $this->reqsigcount; ?>],
                  yAxisID: 'y-axis-3',
                  }              
              
              ],
  },
  options: {
    maintainAspectRatio: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    scales: {
      xAxes: [{
        time: {
          unit: 'date'
        },
        gridLines: {
          display: true,
          drawBorder: true
        },
        ticks: {
          maxTicksLimit: 7
        }
      }],
      yAxes: [{
							type: 'linear',
							display: false,
							position: 'left',
							id: 'y-axis-1',
						}, {
							type: 'linear', 
							display: false,
							id: 'y-axis-2',

							gridLines: {
								drawOnChartArea: false,
							}}, 
              {
							type: 'linear', 
							display: false,
							id: 'y-axis-3',

							gridLines: {
								drawOnChartArea: false,
							}}, 
              
              {
							type: 'linear', 
							display: false,
							id: 'y-axis-4',

							gridLines: {
								drawOnChartArea: false,
							}},
						],
        
    },
    legend: {
      display: true
    },
    tooltips: {
      backgroundColor: "rgb(255,255,255)",
      bodyFontColor: "#858796",
      titleMarginBottom: 10,
      titleFontColor: '#6e707e',
      titleFontSize: 14,
      borderColor: '#dddfeb',
      borderWidth: 1,
      xPadding: 15,
      yPadding: 15,
      displayColors: false,
      intersect: false,
      mode: 'index',
      caretPadding: 10
      
    }
  }
}); 

</script>
