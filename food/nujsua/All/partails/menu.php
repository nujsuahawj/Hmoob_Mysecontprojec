<?php include('../config/constants.php'); ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- Important to make website responsive -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hmoob.com</title>
    <link rel="icon" href="winvang.PNG" type="image/PNG" sizes="16x16">


    <!-- Link our CSS file -->
    <link rel="stylesheet" href="../css/style.css">
</head>

<body>
    <!-- Navbar Section Starts Here -->
    <section class="navbar">
        <div class="container">
            <div class="logo">
                <a href="#" title="Logo">
                    <img src="../images/logo.png" alt="Restaurant Logo" class="img-responsive">
                </a>
            </div>

            <div class="menu text-right">
                <ul>
                    <li>
                        <a href="<?php echo SITEURL; ?>">ໜ້າລັກ</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>Kind">ປະເພດ</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>All/">ທັງໝົດ</a>
                    </li>
                    <li>
                        <a href="<?php echo SITEURL; ?>Contact/">ຕິດຕໍ່</a>
                    </li>
                </ul>
            </div>

            <div class="clearfix"></div>
        </div>
    </section>
    <!-- Navbar Section Ends Here -->