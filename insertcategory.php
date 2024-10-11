<?php
require "dbconnect.php";

if (strlen($_POST['name']) <= 255){
    try {
        $sql = 'INSERT INTO product_category(category_name) VALUES(:name)';
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':name',$_POST['name']);
        $stmt->execute();
        $_SESSION['msg'] = "Категория успешно добавлена";


    } catch (PDOexception $error) {
        $_SESSION['msg'] = "Ошибка добавления категории: " . $error->getMessage();
    }
}
else $_SESSION['msg'] = "Ошибка добавления категории: Кол-во символов в названии не должно превышать 255 символов";

// перенаправление на страницу категорий
header('Location: index.php?page=v');
exit( );
