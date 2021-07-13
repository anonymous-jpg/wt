<!DOCTYPE html>
<html lang="en">

<body>
    <form action="">
        Name:<input type="text" name="name" id=""><br />
        Pass:<input type="password" name="pass" id=""><br />
        Email:<input type="text" name="email" id=""><br />
        Phone:<input type="text" name="phone" id=""><br />
        <input type="submit" value="Validate" name="validate">
    </form>
</body>

</html>
<?php
if (isset($_GET['validate'])) {
    $name = $_GET['name'];
    $pass = $_GET['pass'];
    $email = $_GET['email'];
    $phone = $_GET['phone'];
    if (strlen($name) < 6) {
        echo "Name length should be 6<br>";
    }
    if (!ctype_alpha($name)) {
        echo "Only alphabets allowed<br>";
    }
    if (strlen($pass) < 6) {
        echo "Password length should be 6<br>";
    }
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
        echo "Invalid email";
    }
    if (strlen($phone)) {
        echo "Mobile should be len of 10";
    }
    if (!ctype_digit($phone)) {
        echo "only numbers allowed";
    }
}
?>