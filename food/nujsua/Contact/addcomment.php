<?php include('partails/menu.php'); 
          $name = $_POST['name'];
          $comment = $_POST['comment'];
          $number = 1;

          $sql = "INSERT INTO comment SET 
                    id='$number',
                    name ='$name',
                    comment='$comment'
                ";
           $res = mysqli_query($conn, $sql);
           if($res==true)
           {
               //Redirect to Manage Category Page
               header('location:'.SITEURL.'Contact/');
           }
           else
           {
               //Redirect to Manage Category Page
               header('location:'.SITEURL.'Contact/');
           }
?> 