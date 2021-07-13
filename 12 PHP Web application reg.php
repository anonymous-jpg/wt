<?php
$full = $_GET['full'];
$uname = $_GET['name'];
$pass = $_GET['pass'];
$con = mysqli_connect("localhost", "root", "", "mydb");
$sql = "insert into emp values('$uname',0,'$full','$pass')";
if (mysqli_query($con, $sql)) {
    header("Location:login.html");
} else {
    echo "error";
}
