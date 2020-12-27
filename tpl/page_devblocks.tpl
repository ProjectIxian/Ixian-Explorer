
<div class="container-fluid"> 
    
        
<h4>Blocks</h4>
<div class="table-aresponsive">
<table id="tblocks" class="table table-sm table-fixed">
            <thead class="">
                <tr>
                    <th style="width: 60px">Height</th>
                    <th>Hash</th>
                    <th>Added</th> 
                    <th>Txs</th>
                    <th>Sigs</th>
                    <th>B.Time</th>
                </tr>
            </thead>
            <tbody>
            </tbody>
</table>
</div>
    


</div><!-- Page Content -->


<script src="vendor/datatables/jquery.dataTables.min.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.min.js"></script>

<script>
    var etbl;
    $(function () {
        $etbl = $('#tblocks').DataTable({
            'paging' : true,
            'pagingType': 'numbers',
            'lengthChange' : true,
            'info' : false,
            'ordering' : true,
			'order': [[ 0, "desc" ]],
            'searching' : false,
            'serverSide' : true,
            'processing' : true,
            'autoWidth': false,
            'ajax' : 'feeds/devblocks.php'
        });
    }) 
    
</script>