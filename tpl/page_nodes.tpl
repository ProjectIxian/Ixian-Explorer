<script src="vendor/chart.js/Chart.min.js"></script>
<!-- Begin Page Content -->
<div class="container-fluid">
            
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Ixian Nodes</h1>
    <p class="mb-4"></p>

      
      
   <div class="row">

      <!-- Card -->
      <div class="col-xl-4 col-md-4 mb-4">
        <div class="card border-left-success shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Active DLT Nodes</div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->m;?></div>
                          </div>
                          <div class="col-auto">
                              <i class="fas fa-server fa-2x text-gray-300"></i>
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
                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Active S2 Nodes</div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->r;?></div>
                          </div>
                          <div class="col-auto">
                              <i class="fas fa-satellite-dish fa-2x text-gray-300"></i>
                          </div>
                      </div>
                  </div>
              </div>
          </div> 
       
      <!-- Card -->
      <div class="col-xl-4 col-md-4 mb-4">
        <div class="card border-left-danger shadow h-100 py-2">
          <div class="card-body">
            <div class="row no-gutters align-items-center">
              <div class="col mr-2">
                <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">Currently Active Clients</div>
                          <div class="h5 mb-0 font-weight-bold text-gray-800"><?php echo $this->c;?></div>
                          </div>
                          <div class="col-auto">
                              <i class="fas fa-tv fa-2x text-gray-300"></i>
                          </div>
                      </div>
                  </div>
              </div>
          </div> 
       

            
</div>
  

    <!-- Content Row -->
    <div class="row">
        <div class="col-md-6">
            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Ixian DLT Nodes</h6>
                </div>
                <div class="card-body">
                    <div class="table-aresponsive">
                        <table id="tblocks" class="table table-sm table-fixed">
                                    <thead class="">
                                        <tr>
                                            <th style="width: 80px">Count</th>
                                            <th>Agent</th>
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
                    <hr>
                    <p>
                        Data above shows all currently active DLT nodes.<br/>
                    </p>                    
                </div>
            </div>
        </div>  
        
        
        <div class="col-md-6">
            <!-- Area Chart -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Ixian S2 Nodes</h6>
                </div>
                <div class="card-body">
                    <div class="table-aresponsive">
                        <table id="tblocks" class="table table-sm table-fixed">
                                    <thead class="">
                                        <tr>
                                            <th style="width: 80px">Count</th>
                                            <th>Agent</th>
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
                        <canvas id="chart-1"></canvas>
                    </div>
                    <hr>
                    <p>
                        Data above shows all currently active S2 streaming nodes.<br/>
                    </p>
                    
                </div>
            </div>
        </div>        
    </div>
    


        
    
    
</div><!-- Page Content -->
    

<script>
    

    Chart.defaults.global.defaultFontColor = '#858796';
    
    var ctx = document.getElementById("chart-0");
    var dltChart = new Chart(ctx, {
      type: 'doughnut',
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
      type: 'doughnut',
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
    