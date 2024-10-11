<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/modal.js"></script>
</head>
<body>

<header class="container">

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.php">Пятёрочка</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <ul class="navbar-nav me-auto mb-2 mb-md-0">

                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=c">Товары</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=v">Категории товаров</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=n">История поставок</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.php?page=b">История покупок</a>
                    </li>
                </ul>


                <?php
                if (!isset($_SESSION['login']) ) {
                    echo '<a type="button" class="btn btn-outline-light me-2" href="login.php">Вход</a>';
                    echo '<a type="button" class="btn btn-outline-primary" href="reg.php">Регистрация</a>';
                } else {
                    echo '<a class="text-white bg-dark nav-link">Привет, ' . $_SESSION['first_name'] . ' ' . $_SESSION['last_name'] . '</a>';
                    echo '<a class="btn btn-danger my-2 my-sm-0" href="index.php?logout=1">Выйти</a>';
                }
                ?>

            </div>
        </div>
    </nav>
</header>