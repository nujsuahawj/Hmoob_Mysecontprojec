
<?php include('partails/menu.php'); ?>

<?php 
    //CHeck whether food id is set or not
    if(isset($_GET['food_id']))
    {
        //Get the Food id and details of the selected food
        $food_id = $_GET['food_id'];

        //Get the DEtails of the SElected Food
        $sql = "SELECT * FROM tbl_food WHERE id=$food_id";
        //Execute the Query
        $res = mysqli_query($conn, $sql);
        //Count the rows
        $count = mysqli_num_rows($res);
        //CHeck whether the data is available or not
        if($count==1)
        {
            //WE Have DAta
            //GEt the Data from Database
            $row = mysqli_fetch_assoc($res);

            $title = $row['title'];
            $id = $row['id'];
            $description = $row['description'];
            $image_name = $row['image_name'];
            $url = $row ['url'];
            // $url = 'https://www.youtube-nocookie.com/embed/_WC2MnV7wsI' ;
            
        }
        else
        {
            //Food not Availabe
            //REdirect to Home Page
            header('location:'.SITEURL);
        }
    }
    else
    {
        //Redirect to homepage
        header('location:'.SITEURL);
    }
?>

<!-- fOOD sEARCH Section Starts Here -->
<section class="food-search">
    <div class="container">
        
        <h2 class="text-center text-white">ຂໍ້ມູນດັ່ງຕໍ່ໄປນີ້ເປັນຂໍ້ມູນແລະລາຍລະອຽດຕ່າງໆກ່ຽວກັບ Project ນີ້
          ເພື່ອໃຫ້ແນ່ໃຈໃການສັ່ງຊື້ ຂໍໃຫ້ທ່ານອ່ານລາຍລະອຽດຕ່າງໆກ່ຽວກັບ Project ແລະເພື່ອບໍ່ໃຫ້ເກີດຂໍ້ຜິດພາບໃນການສັ່ງຊື້
            <br>ຮູບພາບຂອງ<br><?php echo $title; ?>s
        </h2>
        <?php 
                    
                        //CHeck whether the image is available or not
                        if($image_name=="")
                        {
                            //Image not Availabe
                            echo "<div class='error'>Image not Available.</div>";
                        }
                        else
                        {
                            //Image is Available
                            ?>
                            <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="Chicke Hawain Pizza" class="img-responsivede">
                            <h2 class="text-center text-white"> ເບິ່ງເພີ່ມຕື່ມທ່າງວີດີໂອ</h2>
                           <p class="img-responsivede"> <iframe   src="<?php echo $url ?>" id="video" height="300px" width="800px" frameborder="" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe></p>
                            <h4 class="img-responsivede">
                                <?php echo $description; ?>
                            </h4>
                            <h2 class="text-center text-white"> <a  href="<?php echo SITEURL; ?>Order/?food_id=<?php echo $id; ?>" class="btn btn-primary">ຊື້ດ່ຽວນີ້ </a></h2>
                            
                            <?php
                            
                        }
                    
                    ?>
    </div>
</section>
<!-- fOOD sEARCH Section Ends Here -->

<?php include('partails/footer.php'); ?>