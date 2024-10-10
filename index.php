<?php
    require "dbconnect.php";
    $result = $conn->query("SELECT * FROM  product");
    echo "<h2>Продукты</h2>";
    while ($row = $result->fetch()) {
        echo $row['product_name'], " ", $row['weight']."<br>";
}