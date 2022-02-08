<?php
$insert = false;
if(isset($_POST['name'])){
$server = "localhost";
$username = "root";
$password = "";


$con=mysqli_connect($server, $username, $password);

if(!$con){
    die("Connection to this database failed due to" . mysqli_connect_error());
}
// echo "Success connecting to the database";
$Name = $_POST[ 'name' ];
$Gender = $_POST[ 'gender' ];
$Age = $_POST[ 'age' ];
$Email = $_POST[ 'email' ];
$Phone = $_POST[ 'phone' ];
$Desc = $_POST[ 'desc' ];


$sql = "INSERT INTO `us_trip`.`trip` (`Name`, `Age`, `Gender`, `Email`, `Phone`, `Other`, `dt`) VALUES ('
$Name', '$Age', '$Gender', '$Email', '$Phone', '$Desc', current_timestamp());";

// echo $sql;

if($con->query($sql) == true){
    // echo "Successfully inserted";
    $insert = true;
}
else{
    echo "ERROR: $sql <br> $con->error";
}
$con->close();
}
?>






<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome to travel form</title>
    <link rel="stylesheet" href="trip.css">
    <link href="https://fonts.googleapis.com/css2?family=Amita&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Amita&family=Fondamento&display=swap" rel="stylesheet">
</head>

<body>
    <img class="bg" src="bg.jpeg" alt="IIT Kharagpur">
    <div class="container">
        <h3>Welcome to IIT Kharagpur US trip form</h3>
        <p>Enter your details and submit this form to confirm your participation in this trip</p>
        <?php
        if($insert == true){
        echo "<p class='bago'>Thanks for submitting the form ,we are happy to se you joining the trip</p>";
        }
        ?>
        <form action="" method="post">
            <input type="text" name="name" id="Name" placeholder="Enter your name">
            <input type="text" name="age" id="Age" placeholder="Enter your age">
            <input type="text" name="gender" id="gender" placeholder="Enter your gender">
            <input type="email" name="email" id="Email" placeholder="Enter your email">
            <input type="number" name="phone" id="Phone" placeholder="Enter your phone number">
            <textarea name="desc" id="Desc" cols="10" rows="10" placeholder="Enter any other information"></textarea>
            <input type="submit" value="Submit" class="btn">
        </form>
    </div>
</body>
</html>