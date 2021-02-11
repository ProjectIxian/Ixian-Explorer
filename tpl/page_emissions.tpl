<script src="vendor/chart.js/Chart.min.js"></script>
<!-- Begin Page Content -->
<div class="container-fluid">
            
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">IxiCash Emissions</h1>
    <p class="mb-4"></p>           
            
    <div class="card shadow mb-4">
        <div class="card-body">
            This page contains all information regarding the IxiCash emission model, which includes the mining and
            signing block rewards, as well as the projected number of total IXI in circulation at any given block height.<br/>
        </div>
    </div>
       
    <!-- Content Row -->
    <div class="row">
        <div class="col-xl-6">
            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Mining Block Reward Chart</h6>
                </div>
                <div class="card-body">
                    <div class="chart-area" style="position: relative; height:60vh;">
                        <canvas id="chart-0"></canvas>
                    </div>
                    <hr>
                    <p>
                        Data above shows the mining reward for every block mined.<br/>
                    </p>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card shadow mb-4">
                                <div class="card-body border-left-primary">
                                    IxiCash emission model for mining rewards:<br/>
                                    <ul>
                                        <li>
                                            Mining reward starts with 10 IXI and increases by 0.009 IXI with every block until block height #1051200.<br/>
                                            Last block reward in this period is 4740 IXI.
                                        </li>
                                        <li>Mining reward is set to 4740 IXI per block until block height #1802000.</li>
                                        <li>Mining reward is set to 2304 IXI per block until block height #6307200.</li>
                                        <li>Mining reward is set to 1152 IXI per block until block height #9460800.</li>
                                        <li>Mining reward is set to 576 IXI per block until block height #12614400.</li>
                                        <li>Mining reward is set to 18 IXI per block until block height #105120000.</li>
                                    </ul>
                                    <br/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
        
        
        <div class="col-xl-6">
            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Signing Block Reward Chart</h6>
                </div>
                <div class="card-body">
                    <div class="chart-area" style="position: relative; height:60vh;">
                        <canvas id="chart-1"></canvas>
                    </div>
                    <hr>
                    <p>
                        Data above shows the projected signing reward for every block signed.<br/>
                    </p>
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="card shadow mb-4">
                                <div class="card-body border-left-primary">
                                    Emission model for signing rewards:<br/>
                                    <ul>
                                        <li>
                                            Signing reward is set to 0.1% of the total supply per year until block height #86400.<br/>
                                            Last block reward in this period is 2 IXI.
                                        </li>
                                        <li>Signing reward is set to 5% of the total supply per year until block height #1802000.</li>
                                        <li>Signing reward is set to 576 IXI per block until block height #6307200.</li>
                                        <li>Signing reward is set to 288 IXI per block until block height #9460800.</li>
                                        <li>Signing reward is set to 144 IXI per block until block height #12614400.</li>
                                        <li>Signing reward is set to 72 IXI per block until block height #15768000.</li>
                                        <li>Signing reward is fixed to 36 IXI per block after block height #15768000.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>        
    </div>
    
    <div class="row">
        <div class="col-12">
            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Projected Total IxiCash in Circulation at Each Block Height</h6>
                </div>
                
                <div class="card-body">
                    <div class="chart-area" style="position: relative; height:60vh;">
                        <canvas id="chart-2"></canvas>
                    </div>
                    <hr>
                    <p>
                        Data above shows the projected total IxiCash in circulation at each block height. One block represents approximately 30 seconds. The supply increases according to the mining and signing rewards.<br/>
                    </p>
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card shadow mb-4">
                                <div class="card-body border-left-primary">
                                    IxiCash emission model total supply:<br/>
                                    <ul class="emissions-list">
                                        <li>
                                            Block: <strong>#1</strong><br/>
                                            Total supply: <strong>2,000,320,000 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#1051199</strong> (roughly one year later)<br/>
                                            Supply increased in the period: <strong>+1,369,643,634 IXI</strong><br/>
                                            Total supply: <strong>3,369,963,634 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#2102399</strong> (roughly one year later)<br/>
                                            Supply increased in the period: <strong>+2,461,374,354 IXI</strong><br/>
                                            Total supply: <strong>5,831,337,988 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#3153599</strong> (roughly one year later)<br/>
                                            Supply increased in the period: <strong>+1,816,473,600 IXI</strong><br/>
                                            Total supply: <strong>7,647,811,588 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#4204799</strong> (roughly one year later)<br/>
                                            Supply increased in the period: <strong>+1,816,473,600 IXI</strong><br/>
                                            Total supply: <strong>9,464,285,188 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#5256000</strong> (roughly one year later)<br/>
                                            Supply increased in the period: <strong>+1,816,476,480 IXI</strong><br/>
                                            Total supply: <strong>11,280,761,668 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#12614400</strong> (roughly 7 years later)<br/>
                                            Supply increased in the period: <strong>+5,903,536,410 IXI</strong><br/>
                                            Total supply: <strong>17,184,298,078 IXI</strong>
                                        </li>
                                        <li>
                                            Block: <strong>#65174400</strong> (roughly 50 years later)<br/>
                                            Supply increased in the period: <strong>+2,478,729,564 IXI</strong><br/>
                                            Total supply: <strong>19,663,027,642 IXI</strong>
                                        </li>
                                        <li>
                                            <strong>Target supply after 100 years (#105120000): 21,460,579,624 IXI</strong>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>  
    </div> 
</div>

<script>

var ctx = document.getElementById("chart-0");

const verticalLinePlugin = {
  getLinePosition: function (chart, pointIndex) {
      const meta = chart.getDatasetMeta(0);
      const data = meta.data;
      return data[pointIndex]._model.x;
  },
  renderVerticalLine: function (chartInstance, pointIndex) {
      const lineLeftOffset = this.getLinePosition(chartInstance, pointIndex);
      const scale = chartInstance.scales['y-axis-0'];
      const context = chartInstance.chart.ctx;

      // render vertical line
      context.beginPath();
      
      context.shadowOffsetX = 3;
      context.shadowOffsetY = 3;
      context.shadowBlur = 4;
      context.shadowColor = "rgba(0,0,0,0.3)";
    context.strokeStyle = '#000000';

    if(pointIndex == 8)
    {
      context.strokeStyle = '#F09A1D';
    }
      context.lineWidth = 2;
      context.moveTo(lineLeftOffset, scale.top);
      context.lineTo(lineLeftOffset, scale.bottom);
      context.stroke();

      context.fillStyle = "#000000";
      context.textAlign = 'left';

      context.font = 'bold 10pt Courier';
      if(pointIndex != 8)
        context.fillText('TODAY', lineLeftOffset-45, scale.bottom-48);
      else {
          context.fillStyle = "#F09A1D";
          context.fillText('Algorithm change', lineLeftOffset+3, scale.bottom-180);
      }
      context.shadowBlur = 0;
      context.shadowOffsetX = 0;
      context.shadowOffsetY = 0;
  },

  afterDatasetsDraw: function (chart, easing) {
      if (chart.config.lineAtIndex) {
          chart.config.lineAtIndex.forEach(pointIndex => this.renderVerticalLine(chart, pointIndex));
      }
  }
  };

  Chart.plugins.register(verticalLinePlugin);
    
var myLineChart = new Chart(ctx, {
  type: "line",
  data: {
    labels: [  
        1, 86399, 250000, 500000, 750000, 1000000, 1051199, 1051200, 1250000, 1500000, 1750000, 1801999, 1802000, 2000000, 2102399, 2102400, 2250000, 2500000, 2750000, 3000000, 3153599, 3153600, 3250000, 3500000, 3750000, 4000000, 4204799, 4204800, 4250000, 4500000, 4750000, 5000000, 5250000, 5256000, 5256001, 5500000, 5750000, 6000000, 6250000, 6307199, 6307200, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9460799, 9460800, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12614399, 12614400, 12750000, 13000000, 13250000, 13500000, 13750000, 14000000, 14250000, 14500000, 14750000, 15000000, 15250000, 15500000, 15750000, 16000000
    ],
    datasets: [{
      label: "Mining Reward",
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
      steppedLine: true,
      data: [
        null, null, null, null, null, null, null, null, null, null, null, 4740, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18, 18
      ],
      yAxisID: 'y-axis-0'
    },
    {
      label: "Mining Reward",
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
      data: [
          10, 399, 1135, 2260, 3385, 4510, 4740, 4740, 4740, 4740, 4740, 4740
      ],
      yAxisID: 'y-axis-0'
    }                            
    ]
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
          display: true,
          id: 'x-axis-0',
        time: {
          unit: 'date'
        },
        gridLines: {
          display: true,
          drawBorder: true
        },
        ticks: {
          maxTicksLimit: 10,
            callback: function(value, index, values) {
                        return "#"+value;
            } 
        }
      }],
      yAxes: [{
		type: 'linear',
		display: true,
		position: 'left',
		id: 'y-axis-0',
        ticks: {
            callback: function(value, index, values) {
                return value.toLocaleString() + " IXI";
            }
        }
      }]
    },
    legend: {
      display: false
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
            
       
    
    

        
    
    
var ctx1 = document.getElementById("chart-1");
var myLineChart1 = new Chart(ctx1, {
  type: "line",
  data: {
    labels: [  
        1, 86399, 250000, 500000, 750000, 1000000, 1051199, 1051200, 1250000, 1500000, 1750000, 1801999, 1802000, 2000000, 2102399, 2102400, 2250000, 2500000, 2750000, 3000000, 3153599, 3153600, 3250000, 3500000, 3750000, 4000000, 4204799, 4204800, 4250000, 4500000, 4750000, 5000000, 5250000, 5256000, 5256001, 5500000, 5750000, 6000000, 6250000, 6307199, 6307200, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9460799, 9460800, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12614399, 12614400, 12750000, 13000000, 13250000, 13500000, 13750000, 14000000, 14250000, 14500000, 14750000, 15000000, 15250000, 15500000, 15750000, 15767999, 15768000, 16000000
    ],
    datasets: 
    [
        {
          label: "Signing Reward",
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
          steppedLine: true,
          data: [
            null, null, null, null, null, null, null, null, null, null, null, 266, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 72, 36, 36
          ],
          yAxisID: 'y-axis-0'
        },
        {
          label: "Signing Reward",
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
          data: [
            2, 2, 104, 116, 136, 162, 168, 168, 194, 226, 259, 266
          ],
          yAxisID: 'y-axis-0'
        }
    ]
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
          maxTicksLimit: 10,
            callback: function(value, index, values) {
                return "#"+value;
            } 
        }
      }],
      yAxes: [{
            type: 'linear',
            display: true,
            position: 'left',
            id: 'y-axis-0',
        ticks: {
            callback: function(value, index, values) {
                return value.toLocaleString() + " IXI";
            }
        }
      }]
    },
    legend: {
      display: false
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
    
var ctx2 = document.getElementById("chart-2");
var myLineChart2 = new Chart(ctx2, {
  type: 'line',
  data: {
    labels: [  
        1, 250000, 500000, 750000, 1000000, 1250000, 1500000, 1750000, 1802000, 2000000, 2250000, 2500000, 2750000, 3000000, 3250000, 3500000, 3750000, 4000000, 4250000, 4500000, 4750000, 5000000, 5250000, 5500000, 5750000, 6000000, 6250000, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12750000, 13000000, 13250000, 13500000, 13750000, 14000000, 14250000, 14500000, 14750000, 15000000, 15250000, 15500000, 15750000, 16000000
    ],
    datasets: [
        {
          label: "Projected IxiCash in circulation",
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
          data: [
            2000320002, 2088776452, 2328422958, 2712591418, 3243099696, 3877178318, 4522216104, 5175367465, 5312249560, 5654393560, 6086393560, 6518393560, 6950393560, 7382393560, 7814393560, 8246393560, 8678393560, 9110393560, 9542393560, 9974393560, 10406393560, 10838393560, 11270393560, 11702393560, 12134393560, 12566393560, 12998393560, 13263812920, 13479812920, 13695812920, 13911812920, 14127812920, 14343812920, 14559812920, 14775812920, 14991812920, 15207812920, 15423812920, 15639812920, 15838877800, 15946877800, 16054877800, 16162877800, 16270877800, 16378877800, 16486877800, 16594877800, 16702877800, 16810877800, 16918877800, 17026877800, 17134877800, 17195281570, 17215531570, 17235781570, 17256031570, 17276281570, 17296531570, 17316781570, 17337031570, 17357281570, 17377531570, 17397781570, 17418031570, 17438281570, 17450179534
          ],
          yAxisID: 'y-axis-0'
        }
    ]
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
          maxTicksLimit: 10,
            callback: function(value, index, values) {
                        return "#"+value;
            }            
        }
      }],
      yAxes: [{
		type: 'linear',
		display: true,
		position: 'left',
		id: 'y-axis-0',
        ticks: {
            callback: function(value, index, values) {
                return value.toLocaleString() + " IXI";
            }
        }
      }]
    },
    legend: {
      display: false
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