<?php

require "dbconnect.php";

if (isset($_POST["login"]) and $_POST["login"]!='')
{
    try {
        $sql = "SELECT * FROM users WHERE email=:login";
        $stmt = $conn->prepare($sql);
        $stmt->bindValue(':login', $_POST['login']);
        $stmt->execute();

    } catch (PDOexception $error) {
        $msg = "Ошибка аутентификации: " . $error->getMessage();
    }

    if ($row=$stmt->fetch(PDO::FETCH_LAZY)) {
        if (MD5($_POST['password']) != $row['password']) {
            $msg = "Неправильный пароль!";
        } else {
            // успешная аутентификация
            $_SESSION['login'] = $_POST['login'];
            $_SESSION['first_name'] = $row['first_name'];
            $_SESSION['last_name'] = $row['last_name'];
            $_SESSION['id'] = $row['id'];
            $msg =  "Вы успешно вошли в систему";

            header('Location: /');


        }
    } else {
        $msg = "Пользователя с такой почтой не существует";
    }

}
if (isset($_GET["logout"]))
{
    $_SESSION = null;
    $_SESSION['msg'] =  "Вы успешно вышли из системы";
    header('Location: /');
    exit( );
}

?>