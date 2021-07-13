<?php
$uname = $_GET['name'];
$pass = $_GET['pass'];
$con = mysqli_connect("localhost", "root", "", "mydb");
if (!$con) {
    echo "no";
}
$sql = "select * from emp where uname='$uname'";
$res = mysqli_query($con, $sql);
if (mysqli_num_rows($res) > 0) {
    $sql1 = "select * from emp where uname='$uname' and password='$pass'";
    $res1 = mysqli_query($con, $sql1);
    if (mysqli_num_rows($res1)) {
        $rows = mysqli_fetch_assoc($res1);
        echo "Welcome $rows[Name]";
    } else {
        echo "MISMATCH";
    }
} else {
    echo "jj";
    header("Location:register.html");
}
