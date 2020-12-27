<script src="vendor/chart.js/Chart.min.js"></script>
<!-- Begin Page Content -->
<div class="container-fluid">
            
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">IxiCash Emissions</h1>
    <p class="mb-4"></p>           
            
    <div class="card shadow mb-4">
        <div class="card-body">
            The existing emission/distribution of IxiCash is unusual by industry standards. Our initial plans included uncapped total supply
            of IxiCash and an increasing mining and signing rewards over a certain period of time. This model received much criticism and there was a lot of discussion regarding it. <br/>
            <br/>
            We have prepared a proposal for the new emission model that will replace the existing model, which significantly decreases the size of mining and signing rewards and
            should be activated around block height #1702000 with block v8.<br/>
            <br/>
            This page contains all information regarding the existing and proposed IxiCash emission model, which includes the mining and
            signing block rewards, as well as the exact number of total IXI in circulation at any given block height.<br/>
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
                        The "Today" line roughly shows the current block height and the exact current block mining reward.<br/>
                        The "Algorithm change" line set at block #1702000 shows the block height where the newly proposed emission rate will be activated.<br/>
                        Data right of the line represents the future projected emissions with 2 charts for comparative purposes:<br/>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-info">
                                        <strong>CURRENT</strong> emission model for mining rewards:<br/>
                                        <ul>
                                            <li>
                                                Mining reward starts with 10 IXI and increases by 0.009 IXI with every block until block height #1051200.<br/>
                                                Last block reward in this period is 4740 IXI.
                                            </li>
                                            <li>
                                                Mining reward is set to 4740 IXI per block until block height #2102400.<br/>
                                            </li>
                                            <li>
                                                Mining reward increases by 0.009 IXI with every block until block height #3153600.<br/>
                                                Last block reward in this period is 9471 IXI.
                                            </li>
                                            <li>
                                                Mining reward increases by 0.002 IXI with every block until block height #4204800.<br/>
                                                Last block reward in this period is 10522 IXI.
                                            </li>
                                            <li>
                                                Mining reward increases by 0.009 IXI with every block until block height #5256001.<br/>
                                                Last block reward in this period is 15252 IXI.
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-primary">
                                        <strong>PROPOSED</strong> emission model for mining rewards:<br/>
                                        <ul>
                                            <li>
                                                Mining reward starts with 10 IXI and increases by 0.009 IXI with every block until block height #1051200.<br/>
                                                Last block reward in this period is 4740 IXI.
                                            </li>
                                            <li>Mining reward is set to 4740 IXI per block until block height #1702000.</li>
                                            <li>Mining reward is set to 2304 IXI per block until block height #6307200.</li>
                                            <li>Mining reward is set to 1152 IXI per block until block height #9460800.</li>
                                            <li>Mining reward is set to 576 IXI per block until block height #12614400.</li>
                                            <li>Mining reward is set to 18 IXI per block until block height #105120000.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </p>
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
                        The "Today" line roughly shows the current block height and the projected current block signing reward.<br/>
                        The "Algorithm change" line set at block #1702000 shows the block height where the newly proposed emission rate will be activated.<br/>
                        Data right of the line represents the future projected emissions with 2 charts for comparative purposes:<br/>
                        <div class="row">
                            <div class="col-xl-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-info">
                                        <strong>CURRENT</strong> emission model for signing rewards:<br/>
                                        <ul>
                                            <li>Signing reward is set to 0.1% of the total supply per year until block height #86400.<br/>
                                                Last block reward in this period is 2 IXI.
                                            </li>
                                            <li>Signing reward is set to 5% of the total supply per year until total supply reaches 50 billion (50,000,000,000) IXI in circulation.<br/>
                                                Last block reward in this period is 2500 IXI.
                                            </li>
                                            <li>Signing reward is set to 1% of the total supply per year until total supply reaches 100 billion (100,000,000,000) IXI in circulation.<br/>
                                                Last block reward in this period is 1000 IXI.
                                            </li>
                                            <li>Signing reward is fixed to 100 IXI per block after total supply reaches 100 billion IXI.<br/>
                                            </li>
                                        </ul>
                                        * per year actually means per 1000000 blocks
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-primary">
                                        <strong>PROPOSED</strong> emission model for signing rewards:<br/>
                                        <ul>
                                            <li>
                                                Signing reward is set to 0.1% of the total supply per year until block height #86400.<br/>
                                                Last block reward in this period is 2 IXI.
                                            </li>
                                            <li>Signing reward is set to 5% of the total supply per year until block height #1702000.</li>
                                            <li>Signing reward is set to 576 IXI per block until block height #6307200.</li>
                                            <li>Signing reward is set to 288 IXI per block until block height #9460800.</li>
                                            <li>Signing reward is set to 144 IXI per block until block height #12614400.</li>
                                            <li>Signing reward is fixed to 36 IXI per block after block height #12614400.</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </p>
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
                        The "Today" line roughly shows the current block height and the projected total supply.<br/>
                        The "Algorithm change" line set at block #1702000 shows the block height where the newly proposed emission rate will be activated.<br/>
                        Data right of the line represents the future projected emissions with 2 charts for comparative purposes:<br/>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-info">
                                        <strong>CURRENT</strong> emission model total supply:<br/>
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
                                                Supply increased in the period: <strong>+2,740,057,465 IXI</strong><br/>
                                                Total supply: <strong>6,110,021,099 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#3153599</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+4,153,145,166 IXI</strong><br/>
                                                Total supply: <strong>10,263,166,265 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#4204799</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+5,946,012,376 IXI</strong><br/>
                                                Total supply: <strong>16,209,178,641 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#5256000</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+7,818,258,486 IXI</strong><br/>
                                                Total supply: <strong>24,027,437,127 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#12614400</strong> (roughly 7 years later)<br/>
                                                Supply increased in the period: <strong>+10,685,634,911 IXI</strong><br/>
                                                Total supply: <strong>34,713,072,038 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#65174400</strong> (roughly 50 years later)<br/>
                                                Supply increased in the period: <strong>+43,908,151,332 IXI</strong><br/>
                                                Total supply: <strong>78,621,223,370 IXI</strong>
                                            </li>
                                            <li>
                                                <strong>Target supply after 100 years (#105120000): 115,892,749,323 IXI</strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="card shadow mb-4">
                                    <div class="card-body border-left-primary">
                                        <strong>PROPOSED</strong> emission model total supply:<br/>
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
                                                Supply increased in the period: <strong>+2,371,250,977 IXI</strong><br/>
                                                Total supply: <strong>5,741,214,611 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#3153599</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+1,816,473,600 IXI</strong><br/>
                                                Total supply: <strong>7,557,688,211 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#4204799</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+1,816,473,600 IXI</strong><br/>
                                                Total supply: <strong>9,374,161,811 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#5256000</strong> (roughly one year later)<br/>
                                                Supply increased in the period: <strong>+1,816,476,480 IXI</strong><br/>
                                                Total supply: <strong>11,190,638,291 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#12614400</strong> (roughly 7 years later)<br/>
                                                Supply increased in the period: <strong>+5,903,536,374 IXI</strong><br/>
                                                Total supply: <strong>17,094,174,665 IXI</strong>
                                            </li>
                                            <li>
                                                Block: <strong>#65174400</strong> (roughly 50 years later)<br/>
                                                Supply increased in the period: <strong>+2,365,200,000 IXI</strong><br/>
                                                Total supply: <strong>19,459,374,665 IXI</strong>
                                            </li>
                                            <li>
                                                <strong>Target supply after 100 years (#105120000): 21,256,926,647 IXI</strong>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </p>
                </div>
            </div>
        </div>  
    </div>    

    <div class="card shadow mb-4">
        <div class="card-body">
            <strong>Changing the emission model is a once in a lifetime event! Once the new emission model is activated, it will be set in stone and there will be no other possibilities to change it.<br/>
            We would like to discuss this model in greater detail with all of you, so we invite you to join our discussion on our Discord server, emission-discussion channel <a href="https://discord.gg/TVq9uankVE">https://discord.gg/TVq9uankVE</a>.</strong>
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
  type: 'line',
  lineAtIndex: [6,8],
  data: {
    labels: [  
    
    1, 250000, 500000, 750000, 1000000, 1250000, 1500000, 1701999, 1702000, 1750000, 2000000, 2250000, 2500000, 2750000, 3000000, 3250000, 3500000, 3750000, 4000000, 4250000, 4500000, 4750000, 5000000, 5250000, 5256001, 5500000, 5750000, 6000000, 6250000, 6307199, 6307200, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9460799, 9460800, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12614399, 12614400, 12750000, 13000000,     
    ],
    datasets: [{
      label: "Proposed Mining Rewards",
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
        null, null, null, null, null, null, null, 4740, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 2304, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 1152, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 18, 18, 18
      ],
        yAxisID: 'y-axis-0',
    },
    {
      label: "Current Mining Rewards",
      lineTension: 0.10,
      backgroundColor: "rgba(50, 180, 205, 0.05)",
      borderColor: "rgba(50, 180, 205, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(50, 180, 205, 1)",
      pointBorderColor: "rgba(50, 180, 205, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(50, 180, 205, 1)",
      pointHoverBorderColor: "rgba(50, 180, 205, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [
          10, 1135, 2260, 3385, 4510, 4740, 4740, 4740, 4740, 4740, 4740, 5405, 6530, 7655, 8780, 9567, 9817, 10067, 10317, 10725, 11850, 12975, 14100, 15225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      ],
        yAxisID: 'y-axis-0',
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
            
       
    
    

        
    
    
var ctx1 = document.getElementById("chart-1");
var myLineChart1 = new Chart(ctx1, {
  type: 'line',
  lineAtIndex: [6,8],
  data: {
    labels: [  
    
        1, 250000, 500000, 750000, 1000000, 1250000, 1500000, 1701999, 1702000, 1750000, 2000000, 2250000, 2500000, 2750000, 3000000, 3250000, 3500000, 3750000, 4000000, 4250000, 4500000, 4750000, 5000000, 5250000, 5256001, 5500000, 5750000, 6000000, 6250000, 6307199, 6307200, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9460799, 9460800, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12614399, 12614400, 12750000, 13000000
    ],
    datasets: [{
      label: "Proposed Signing Rewards",
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
        null, null, null, null, null, null, null, 252, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 576, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 288, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 144, 36, 36, 36
      ],
        yAxisID: 'y-axis-0',
    },
    {
      label: "Current Signing Rewards",
      lineTension: 0.10,
      backgroundColor: "rgba(255, 190, 60, 0.05)",
      borderColor: "rgba(255, 190, 60, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(255, 190, 60, 1)",
      pointBorderColor: "rgba(255, 190, 60, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(255, 190, 60, 1)",
      pointHoverBorderColor: "rgba(255, 190, 60, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [
        2, 104, 116, 136, 162, 194, 226, 252, 252, 259, 292, 327, 368, 417, 474, 539, 606, 677, 749, 824, 906, 995, 1093, 1199, 1201, 1216, 1231, 1247, 1263, 1266, 1266, 1278, 1295, 1311, 1327, 1344, 1361, 1378, 1395, 1413, 1431, 1449, 1467, 1482, 1482, 1485, 1504, 1523, 1542, 1562, 1581, 1601, 1621, 1642, 1662, 1683, 1704, 1726, 1736, 1736, 1747, 1769
      ],
        yAxisID: 'y-axis-0',
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
    
    
    
    
    
var ctx2 = document.getElementById("chart-2");
var myLineChart2 = new Chart(ctx2, {
  type: 'line',
  lineAtIndex: [6,8],
  data: {
    labels: [  
    
        1, 250000, 500000, 750000, 1000000, 1250000, 1500000, 1701999, 1702000, 1750000, 2000000, 2250000, 2500000, 2750000, 3000000, 3250000, 3500000, 3750000, 4000000, 4250000, 4500000, 4750000, 5000000, 5250000, 5256001, 5500000, 5750000, 6000000, 6250000, 6307199, 6307200, 6500000, 6750000, 7000000, 7250000, 7500000, 7750000, 8000000, 8250000, 8500000, 8750000, 9000000, 9250000, 9460799, 9460800, 9500000, 9750000, 10000000, 10250000, 10500000, 10750000, 11000000, 11250000, 11500000, 11750000, 12000000, 12250000, 12500000, 12614399, 12614400, 12750000, 13000000,     
    ],
    datasets: [{
      label: "Proposed Supply",
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
            null, null, null, null, null, null, null, 5049323411, 5049326291, 5132270291, 5564270291, 5996270291, 6428270291, 6860270291, 7292270291, 7724270291, 8156270291, 8588270291, 9020270291, 9452270291, 9884270291, 10316270291, 10748270291, 11180270291, 11190638867, 11612270291, 12044270291, 12476270291, 12908270291, 13007109011, 13007110451, 13173689651, 13389689651, 13605689651, 13821689651, 14037689651, 14253689651, 14469689651, 14685689651, 14901689651, 15117689651, 15333689651, 15549689651, 15731819411, 15731820131, 15748754531, 15856754531, 15964754531, 16072754531, 16180754531, 16288754531, 16396754531, 16504754531, 16612754531, 16720754531, 16828754531, 16936754531, 17044754531, 17094174611, 17094174665, 17100276665, 17111526665
        ],
        yAxisID: 'y-axis-0',
    },
               {
      label: "Current Supply",
      lineTension: 0.3,
      backgroundColor: "rgba(223, 78, 115, 0.05)",
      borderColor: "rgba(223, 78, 115, 1)",
      pointRadius: 1,
      pointBackgroundColor: "rgba(223, 78, 115, 1)",
      pointBorderColor: "rgba(223, 78, 115, 1)",
      pointHoverRadius: 1,
      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
      pointHitRadius: 1,
      pointBorderWidth: 1,
      data: [
          
        2000320002, 2088776552, 2328423059, 2712591520, 3243099799, 3877178423, 4522216209, 5049323411, 5049328403, 5175367572, 5836734568, 6530990584, 7363562804, 8348115065, 9486559042, 10772685695, 12127285511, 13530370222, 14982549693, 16486230625, 18113298562, 19902340066, 21855392514, 23974518910, 24027437127, 24322366052, 24628303747, 24938089665, 25251772209, 25324094383, 25324095649, 25569400394, 25891023850, 26216692831, 26546458223, 26880371552, 27218484995, 27560851381, 27907524206, 28258557638, 28614006527, 28973926412, 29338373532, 29649233863, 29649235345, 29707404833, 30081077975, 30459451347, 30842584070, 31230536010, 31623367784, 32021140773, 32423917130, 32831759790, 33244732480, 33662899725, 34086326868, 34515080068, 34713070302, 34713072038, 34949226319, 35388833457,           
      ],
      yAxisID: 'y-axis-0',
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
</script>