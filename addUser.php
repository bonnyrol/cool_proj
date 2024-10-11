<?php

require "dbconnect.php";

if (isset($_POST["login"]) and $_POST["login"]!='') {
    if ($_POST['password1'] == $_POST['password2'] ) {
        try {
            /*Проверка почты на уникальность*/
            $checkEmailSql = "SELECT COUNT(*) FROM users WHERE email = :email";
            $checkEmailStmt = $conn->prepare($checkEmailSql);
            $checkEmailStmt->execute(['email' => $_POST['login']]);
            $emailExists = $checkEmailStmt->fetchColumn();

            if (!$emailExists) {
                $sql = "INSERT INTO users(first_name, last_name, email, password) VALUES(:first_name, :last_name, :email, :password)";
                $stmt = $conn->prepare($sql);
                $stmt->execute([
                        "first_name" => $_POST['first_name'],
                        "last_name" => $_POST['last_name'],
                        "email" => $_POST['login'],
                        "password" => MD5($_POST['password1'])
                    ]
                );

                /*Логинемся если всё норм*/
                $_SESSION['login'] = $_POST['login'];
                $_SESSION['first_name'] = $_POST['first_name'];
                $_SESSION['last_name'] = $_POST['last_name'];
//                $_SESSION['id'] = $['id'];
                $msg =  "Регистрация прошла успешно";


            } else {
                $msg = "Данный email уже занят";
            }

        } catch (PDOException $error) {
            echo $error;
        }
    } else {
        $msg = "Пароли не совпадают";
    }
}