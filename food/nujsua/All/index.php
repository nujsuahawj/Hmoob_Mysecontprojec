
    <?php include('partails/menu.php'); ?>

<!-- fOOD sEARCH Section Starts Here -->
<section class="food-search text-center">
    <div class="container">
        
        <form action="<?php echo SITEURL; ?>Seach/" method="POST">
            <input type="search" name="search" placeholder="ຊອກຫາ Project.." required>
            <input type="submit" name="submit" value="ຄົ້ນຫາ" class="btn btn-primary">
        </form>

    </div>
</section>
<!-- fOOD sEARCH Section Ends Here -->



<!-- fOOD MEnu Section Starts Here -->
<section class="food-menu">
    <div class="container">
        <h2 class="text-center">Project ທັງໝົດ</h2>

        <?php 
            //Display Foods that are Active
            // $sql = "SELECT * FROM tbl_food WHERE active='Yes'";
            $sql = "SELECT * FROM tbl_food ORDER BY id DESC";

            //Execute the Query
            $res=mysqli_query($conn, $sql);

            //Count Rows
            $count = mysqli_num_rows($res);

            //CHeck whether the foods are availalable or not
            if($count>0)
            {
                //Foods Available
                while($row=mysqli_fetch_assoc($res))
                {
                    //Get the Values
                    $id = $row['id'];
                    $title = $row['title'];
                    $description = $row['description'];
                    $price = $row['price'];
                    $image_name = $row['image_name'];
                    ?>
                    
                    <div class="food-menu-box">
                        <div class="food-menu-img">
                            <?php 
                                //CHeck whether image available or not
                                if($image_name=="")
                                {
                                    //Image not Available
                                    echo "<div class='error'>Image not Available.</div>";
                                }
                                else
                                {
                                    //Image Available
                                    ?>
                                    <img src="<?php echo SITEURL; ?>images/food/<?php echo $image_name; ?>" alt="Chicke Hawain Pizza" class="img-responsive img-curve">
                                    <?php
                                }
                            ?>
                            
                        </div>

                        <div class="food-menu-desc">
                            <h4><?php echo $title; ?></h4>
                            <p class="food-price">ລາຄາ $<?php echo $price; ?></p>
                            <p class="food-detail">
                                ອັດຕາການແລກປ່ຽນເງິນແຕ່ລະສະກຸນ <br>
                                $ 1.00 = 9 000 ₭ <br>
                                $ 1.00 = 30  ฿
                            </p>
                            <br>

                            <a href="<?php echo SITEURL; ?>Order/?food_id=<?php echo $id; ?>" class="btn btn-primary">ຊື້ດ່ຽວນີ້</a>
                            <a href="<?php echo SITEURL; ?>View/?food_id=<?php echo $id; ?>" class="btn btn-primary">ເບິ່ງເພີ່ມຕື່ມ</a>
                        </div>
                    </div>

                    <?php
                }
            }
            else
            {
                //Food not Available
                echo "<div class='error'>Food not found.</div>";
            }
        ?>

        

        

        <div class="clearfix"></div>

        

    </div>

</section>
<!-- fOOD Menu Section Ends Here -->

<?php include('partails/footer.php'); ?>