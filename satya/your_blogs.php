<?php

$id = $_GET['id'];

$servername = "localhost";
$username = "root";
$password = "";
$database = "darx";
$conn = mysqli_connect($servername, $username, $password, $database);

$querry = "Select * from blogs where id = '$id' ";
$result = mysqli_query($conn, $querry);

$querry1 = "Select * from users_master where id = '$id' ";
$result1 = mysqli_query($conn, $querry1);
$record1 = mysqli_fetch_assoc($result1)

?>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>

<body>
<div class="content-wrapper">
            <!-- Main content -->
            <section class="content">
                <div class="container-fluid">
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title mt-2"><?php echo $record1['full_name']; ?>'s BLOGS</h3>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                        <thead>
                            <tr>
                             
                                <th>BLOG</th>
    
                            </tr>
                        </thead>
                        <tbody>

                        <?php
                        if($result)
                        {
                            while($record=mysqli_fetch_assoc($result))
                            { 

                               echo "<tr>
                        
                                 <td>".$blogdata=$record['blogdata']. "</td>

                                </tr>";
                                

                            }    
                        }
                        ?>
                        </tbody>

                    </table>
                </div>
                <!-- /.card-body -->
            </div>
        </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->


    <!-- Page specific script -->
    <script>
        $(function () {
            $("#example1").DataTable({
                "responsive": true,
                "lengthChange": false,
                "autoWidth": false,
                "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
            }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
            $('#example2').DataTable({
                "paging": true,
                "lengthChange": false,
                "searching": false,
                "ordering": true,
                "info": true,
                "autoWidth": false,
                "responsive": true,
            });
        });
    </script>
</body>

</html>
?>