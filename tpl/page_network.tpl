<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/chart.js/chartjs-plugin-zoom.min.js"></script>
<link rel="stylesheet" href="css/statistics.css"/>

<section class="pageContainer">
    <div class="pageLimitWrapper statsHero">
        <div class="statsHeader">
            <h1 class="heading-lg">Ixian Stats</h1>
            <p class="body-md">All ixian blok and mining stats</p>
            <div class="ixiCard">
                <div class="flexCGap8">
                    <p class="heading-sm"><?php echo $this->bh;?></p>
                    <div class="tooltipWrapperHelper">
                        <p class="label-sm t-gray">Network Block Height</p>
                        <div class="tooltip-container">
                            <i class="fa fa-question-circle"></i>
                            <span class="tooltip">Helper tooltip content...</span>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="gfx/icons/numbers.svg" alt="numbers" />
                </div>
            </div>
        </div>
        <div class="statsContent">
            <p class="heading-sm t-gray">Block Signing Stats</p>
            <div class="statsCardContainer">
                <div class="ixiCard">
                    <div class="flexCGap8">
                        <p class="heading-sm"><?php echo $this->stakers;?></p>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Last Block Signer Count</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="tooltip">Helper tooltip content...</span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <img src="gfx/icons/all_match.svg" alt="all_match" />
                    </div>
                </div>
                <div class="ixiCard">
                    <div class="flexCGap8">
                        <p class="heading-sm"><?php echo $this->requiredsigners;?></p>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Required Signers</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="tooltip">Helper tooltip content...</span>
                            </div>
                        </div>
                    </div>
                    <div>
                        <img src="gfx/icons/orbit.svg" alt="orbit" />
                    </div>
                </div>
                <div class="ixiCard">
                    <div class="flexCGap8">
                        <p class="heading-sm"><?php echo $this->blockstake;?></p>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Block Signing Reward</p>
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
            </div>
        </div>
        <div class="statsContent">
            <p class="heading-sm t-gray">Mining Stats</p>
            <div class="statsCardContainer">
                <div class="ixiCard">
                    <div class="flexCGap8">
                        <p class="heading-sm"><?php echo number_format($this->blockratio,2);?>%</p>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Unsolved Blocks Ratio</p>
                            <div class="tooltip-container">
                                <i class="fa fa-question-circle"></i>
                                <span class="tooltip">Helper tooltip content...</span>
                            </div>
                        </div>
                    </div>
                    <div class="progress progress-sm" style="width: 100%;max-width: 100px;height: 20px;background: #ABAEFA">
                        <div class="progress-bar t-blue" role="progressbar" style="width: <?php echo $this->blockratio;?>%" aria-valuenow="<?php echo $this->blockratio;?>" aria-valuemin="0" aria-valuemax="100"></div>
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
                        <p class="heading-sm"><?php echo $this->miningreward;?></p>
                        <div class="tooltipWrapperHelper">
                            <p class="label-sm t-gray">Block Mining Reward</p>
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
            </div>
        </div>
    </div>

    <div class="bg-1">
        <div class="blockCharts pageLimitWrapper">
            <div class="blockStatusCard">
                <div class="blockStatusCardHeader">
                    <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                    <div>
                        <h3 class="heading-sm">Block Status</h3>
                        <p class="body-md">Showing data for last <span class="t-blue label-sm"><?php echo $this->numblocks;?></span> blocks.</p>
                    </div>
                </div>
                <div>
                    <div class="chart-area">
                        <canvas id="chart-1"></canvas>
                    </div>
                </div>
            </div>
            <div class="blockStatusCard">
                <div class="blockStatusCardHeader">
                    <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                    <div>
                        <h3 class="heading-sm">Block Signing Status</h3>
                        <p class="body-md">Showing data for last <span class="t-blue label-sm"><?php echo $this->numblocks;?></span> blocks.</p>
                    </div>
                </div>
                <div>
                    <div class="chart-area">
                        <canvas id="chart-2"></canvas>
                    </div>
                </div>
            </div>
            <div class="blockStatusCard">
                <div class="blockStatusCardHeader">
                    <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                    <div>
                        <h3 class="heading-sm">Mining Status</h3>
                        <p class="body-md">Showing data for last <span class="t-blue label-sm"><?php echo $this->numblocks;?></span> blocks.</p>
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

</section>

<script>
   
$(function () {
  $('[data-toggle="tooltip"]').tooltip()
})

const decimation = {
  enabled: true,
  algorithm: 'min-max',
};

var ctx = document.getElementById("chart-0");
var mininStatsChart = new Chart(ctx, {
  type: 'line',
  data: {
    labels: [<?php echo $this->difflabels;?>],
    datasets: [{
      label: "Difficulty",
      lineTension: 0,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->diff; ?>],
      yAxisID: 'yaxis1',
    },
              
{
      label: "Hashrate",
      lineTension: 0,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->hash; ?>],
      yAxisID: 'yaxis2',
    }              
              
              ],
  },
  options: {
    maintainAspectRatio: false,
    animation: false,
    spanGaps: true,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    plugins: {
      decimation: decimation
    },
    scales: {
      x: {
        type: 'linear',
        bounds: 'data',
        gridLines: {
          display: true,
          drawBorder: true
        },
        ticks: {
          count: 10,
          precision: 0,
          callback: function(value, index, values) {
                        return "#"+value;
            } 
        }
      },
      yaxis1: {
            type: 'linear',
            display: false,
						position: 'left',
          },
      yaxis2: {
            type: 'linear',
            display: false,
            gridLines: {
								drawOnChartArea: false,
							}
          },
    },
    legend: {
      display: true
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
      lineTension: 0,
      backgroundColor: "rgba(78, 115, 223, 0.05)",
      borderColor: "rgba(78, 115, 223, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(78, 115, 223, 1)",
      pointBorderColor: "rgba(78, 115, 223, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->blocktime; ?>],
      yAxisID: 'yaxis1',
    },
              
{
      label: "Transactions",
      lineTension: 0,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->txcount; ?>],
      yAxisID: 'yaxis2',
    },
              
{
      label: "Signers",
      lineTension: 0,
      backgroundColor: "rgba(223, 223, 115, 0.05)",
      borderColor: "rgba(223, 223, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(223, 223, 115, 1)",
      pointBorderColor: "rgba(223, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
      pointHoverBorderColor: "rgba(223, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->sigcount; ?>],
      yAxisID: 'yaxis3',
    }           
              
              ],
  },
  options: {
    maintainAspectRatio: false,
    animation: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    plugins: {
      decimation: decimation
    },
    scales: {
      x: {
          type: 'linear',
          bounds: 'data',
          gridLines: {
            display: true,
            drawBorder: true
          },
          ticks: {
            count: 10,
            precision: 0,
            callback: function(value, index, values) {
                        return "#"+value;
            } 
          }
      },
          yaxis1: {
            type: 'linear',
            display: false,
						position: 'left',
          },
          yaxis2: {
            type: 'linear',
            display: false,
            gridLines: {
								drawOnChartArea: false,
							}
          },
          yaxis3: {
            type: 'linear',
            display: false,
            gridLines: {
								drawOnChartArea: false,
							}
          },        
    },
    legend: {
      display: true
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
      lineTension: 0,
      backgroundColor: "rgba(78, 223, 115, 0.05)",
      borderColor: "rgba(78, 223, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(78, 223, 115, 1)",
      pointBorderColor: "rgba(78, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->totalsigdiff; ?>],
      yAxisID: 'yaxis1',
    },
              
    {
      label: "Required Signer Difficulty",
      lineTension: 0,
      backgroundColor: "rgba(8, 153, 45, 0.05)",
      borderColor: "rgba(8, 153, 45, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(8, 153, 45, 1)",
      pointBorderColor: "rgba(8, 153, 45, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->reqsigdiff; ?>],
      yAxisID: 'yaxis1',
    },
              
    {
      label: "Signers",
      lineTension: 0,
      backgroundColor: "rgba(223, 223, 115, 0.05)",
      borderColor: "rgba(223, 223, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(223, 223, 115, 1)",
      pointBorderColor: "rgba(223, 223, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
      pointHoverBorderColor: "rgba(223, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->sigcount; ?>],
      yAxisID: 'yaxis2',
    },
              
    {
      label: "Required Signers",
      lineTension: 0,
      backgroundColor: "rgba(223, 183, 115, 0.05)",
      borderColor: "rgba(223, 183, 115, 1)",
      pointRadius: 0,
      pointBackgroundColor: "rgba(223, 183, 115, 1)",
      pointBorderColor: "rgba(223, 183, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(223, 115, 223, 1)",
      pointHoverBorderColor: "rgba(223, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [<?php echo $this->reqsigcount; ?>],
      yAxisID: 'yaxis2',
    }          
    ],
  },
  options: {
    maintainAspectRatio: false,
    animation: false,
    layout: {
      padding: {
        left: 10,
        right: 25,
        top: 25,
        bottom: 0
      }
    },
    responsive: true,
    interaction: {
      mode: 'index',
      intersect: false,
    },
    plugins: {
      decimation: decimation
    },
    scales: {
      x: {
          type: 'linear',
          bounds: 'data',
          gridLines: {
            display: true,
            drawBorder: true
          },
          ticks: {
            count: 10,
            precision: 0,
            callback: function(value, index, values) {
                        return "#"+value;
            } 
          }
      },
      yaxis1: {
        type: 'linear',
        display: false,
				position: 'left',
      },
      yaxis2: {
        type: 'linear',
        display: false,
        gridLines: {
					drawOnChartArea: false,
				}
      },        
    },
    legend: {
      display: true
    }
  }
}); 

</script>
