<!DOCTYPE html>
<html lang="en">

<body>
    <form action="">
        <input type="number" name="o1">
        <select name="op">
            <option value="+">+
            <option value="-">-
            <option value="*">*
            <option value="/">/
            <option value="%">%
        </select>
        <input type="number" name="o2" />
        <button type="submit" name="calc">Calculate</button>
    </form>
</body>

</html>
<?php
if (isset($_GET['calc'])) {
    $a = $_GET['o1'];
    $b = $_GET['o2'];
    switch ($_GET['op']) {
        case "+":
            echo "Sum is :" . ($a + $b);
            break;
        case "-":
            echo "Sub is :" . ($a - $b);
            break;
        case "*":
            echo "Mul is :" . ($a * $b);
            break;
        case "/":
            echo "Div is :" . ($a / $b);
            break;
        case "%":
            echo "Mod is :" . ($a % $b);
            break;
    }
}
