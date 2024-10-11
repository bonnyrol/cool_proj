<?php
    require 'auth.php'
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Вход</title>
</head>
<body>
<?php
    require 'menu.php'
?>
<div class="main">

    <h1>Магазин всего чего только можно</h1>
    <h3>Вход в магазин</h3>
    <div class="container">

            <form method="post">
                <label for="mail" class="col-form-label col-sm-2">
                    Почта:
                </label>
                <div class="col-sm-3">
                    <input class="form-control" type="email"
                           name="login" id="mail" required>
                </div>


                <label for="pass1" class="col-form-label col-sm-2">
                    Пароль:
                </label>
                <div class="col-sm-3">
                    <input class="form-control" type="password"
                           name="password" id="pass1" required>
                </div>

                <br>
                <div class="wrap">
                    <button  class= "btn btn-primary" type="submit"
                             onclick="solve()">
                        Отправить
                    </button>
                </div>
            </form>
    </div>
    <br>
    <p>Ещё не зарегестрированы?
        <a href="reg.php"
           style="text-decoration: none;">
            Создайте аккаунт
        </a>
    </p>
</div>

<?php
if (isset($msg)) {
    include 'message.php';

}
include 'footer.php';
?>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>