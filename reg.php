<?php
    require 'addUser.php';
    ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta charset="UTF-8">
    <title>Регистрация в Магазине</title>
</head>
<body>
<?php
require 'menu.php'
?>
<div class="main">

    <h1>Магазин всего чего только можно</h1>
    <h3 class="col">Регистрация в магазине</h3>
    <div class="container">

        <form method="post">

            <label for="first" class="col-form-label col-sm-2">
                Имя:
            </label>
            <div class="col-sm-3">
                <input class="form-control" type="text"
                       name="first_name" id="first" value="<?= $_POST['first_name'] ?>" required>
            </div>

            <label for="last" class="col-form-label col-sm-2">
                Фамилия:
            </label>
            <div class="col-sm-3">
                <input class="form-control" type="text"
                       name="last_name" id="last" value="<?= $_POST['last_name'] ?>" required>
            </div>

            <label for="mail" class="col-form-label col-sm-2">
                Почта:
            </label>
            <div class="col-sm-3">
                <input class="form-control" type="email"
                       name="login" id="mail" required>
            </div>


            <label for="pass1" class="col-form-label col-sm-2">
                Придумайте пароль:
            </label>
            <div class="col-sm-3">
                <input class="form-control" type="password"
                       name="password1" id="pass1" required>
            </div>

            <label for="pass2" class="col-form-label col-sm-2">
                Повторите пароль:
            </label>
            <div class="col-sm-3">
                <input class="form-control" type="password"
                       name="password2" id="pass2" required>
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