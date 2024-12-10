<script src="vendor/chart.js/Chart.min.js"></script>
<link rel="stylesheet" href="css/nodes.css"/>
<!-- Begin Page Content -->

<section class="pageContainer">
    <div class="pageLimitWrapper">
        <div class="mb-5">
            <h1 class="heading-4">Ixian Nodes</h1>
            <p class="body-text">Explore the stats of IXI nodes and connected clients.</p>
        </div>
        <div class="cardGroup">
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->m;?></p>
                    <p class="small-title t-gray">Active IXI DLT Nodes</p>
                </div>
                <div>
                    <img src="gfx/icons/linked_services.svg" alt="ixi" />
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->r;?></p>
                    <p class="small-title t-gray">Active IXI S2 Nodes</p>
                </div>
                <div>
                    <img src="gfx/icons/s2.svg" alt="s2" />
                </div>
            </div>
            <div class="ixiCard">
                <div>
                    <p class="heading-5"><?php echo $this->c;?></p>
                    <p class="small-title t-gray">Currently Connected Clients</p>
                </div>
                <div>
                    <img src="gfx/icons/spixi_logo.svg" alt="spixi" />
                </div>
            </div>
        </div>
    </div>

    <div class="bg-1">
        <div class="nodeStatsContainer pageLimitWrapper">
            <div class="nodeCard">
                <div class="nodeCardHeader">
                    <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                    <div>
                        <h3 class="heading-5">IXI DLT Nodes</h3>
                        <p class="body-text">Data bellow shows all currently active DLT nodes.</p>
                    </div>
                </div>
                <div>
                    <div class="table-responsive">
                        <table id="tblocks" class="table myTable">
                            <thead class="thead myTableHead">
                            <tr>
                                <th scope="col" class="myTh">Node Count</th>
                                <th scope="col" class="myTh">Ixian Node Version</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($this->dltnodes as $nodeagent => $nodecount) {?>
                            <tr>
                            <td><?php echo $nodecount;?></td>
                            <td><?php echo $nodeagent;?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="chart-area" style="position: relative; height:30vh;">
                        <canvas id="chart-0"></canvas>
                    </div>
                </div>
            </div>
            <div class="nodeCard">
                <div class="nodeCardHeader">
                    <img src="gfx/dlt-nodes.svg" width="64px" alt="dlt-nodes"/>
                    <div>
                        <h3 class="heading-5">IXI S2 Nodes</h3>
                        <p class="body-text">Data bellow shows all currently active S2 streaming nodes.</p>
                    </div>
                </div>
                <div>
                    <div class="table-aresponsive">
                        <table id="tblocks" class="table myTable">
                            <thead class="thead myTableHead">
                            <tr>
                                <th scope="col" class="myTh">Node Count</th>
                                <th scope="col" class="myTh">Ixian Node Version</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php foreach($this->s2nodes as $nodeagent => $nodecount) {?>
                            <tr>
                            <td><?php echo $nodecount;?></td>
                            <td><?php echo $nodeagent;?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <div class="chart-area" style="position: relative; height:30vh;">
                        <canvas id="chart-0"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<script>
    var ctx = document.getElementById("chart-0");
    var dltChart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: [<?php foreach($this->dltnodes as $nodeagent => $nodecount) { echo "\"".$nodeagent."\","; } ?>],
        datasets: [{
          data: [<?php foreach($this->dltnodes as $nodeagent => $nodecount) { echo $nodecount.","; } ?>],
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

    ctx = document.getElementById("chart-1");
    var s2Chart = new Chart(ctx, {
      type: 'pie',
      data: {
        labels: [<?php foreach($this->s2nodes as $nodeagent => $nodecount) { echo "\"".$nodeagent."\","; } ?>],
        datasets: [{
          data: [<?php foreach($this->s2nodes as $nodeagent => $nodecount) { echo $nodecount.","; } ?>],
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
    