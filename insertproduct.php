<?php
require "dbconnect.php";

if (strlen($_POST['name']) <= 255){
    try {
        $sql = 'INSERT INTO product(category_id, product_name, weight) VALUES(:cat_id, :name, :weight)';
        $stmt = $conn->prepare($sql);
        $stmt->execute([
            "cat_id" => $_POST['category'],
            "name" => $_POST['name'],
            "weight" => $_POST['weight']
        ]);
        $_SESSION['msg'] = "Товар успешно добавлен";


    } catch (PDOexception $error) {
        $_SESSION['msg'] = "Ошибка добавления товара: " . $error->getMessage();
    }
}
else $_SESSION['msg'] = "Ошибка добавления товара: Кол-во символов в названии не должно превышать 255 символов";

// перенаправление на страницу категорий
header('Location: index.php?page=c');
exit( );
