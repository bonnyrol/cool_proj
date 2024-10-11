<?php

require "dbconnect.php";


try {
    $sql = 'DELETE FROM product WHERE product.id=:id';
    $stmt = $conn->prepare($sql);
    $stmt->bindValue(':id', $_GET['id']);
    $stmt->execute();
    $_SESSION['msg'] = "Товар успешно удалён";
} catch (PDOexception $error) {
    $_SESSION['msg'] = "Ошибка удаления товара: " . $error->getMessage();
}
// перенаправление на главную страницу приложения
header('Location: index.php?page=c');
exit( );