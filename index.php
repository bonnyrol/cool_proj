<?php
date_default_timezone_set('Asia/Yekaterinburg');
require "auth.php";
require "menu.php";
echo '<main class="container" style="margin-top: 100px">';


switch ($_GET['page']){
    case 'c':
        if (isset($_SESSION['login'])) {
            require "product.php";
        }
        else{
            $msg = 'Войдите в систему для просмотра товаров';
        }
        break;
    case 'v':
        if (isset($_SESSION['login'])) {
            require "category.php";
        }
        else{
            $msg = 'Войдите в систему для просмотра категорий';
        }
        break;
    case 'n':
        if (isset($_SESSION['login'])) {
            require "provider.php";
        }
        else{
            $msg = 'Войдите в систему для просмотра истории поставок';
        }
        break;
    case 'b':
        if (isset($_SESSION['login'])) {
            require "buyer.php";
        } else{
            $msg = 'Войдите в систему для просмотра истории покупок';
        }
        break;
    default:
        echo '<h3>Главная страница, ничего особенного</h3>';
        /*Пасхалка от разработчика*/
        /*Ставь класс если нашёл*/
//        echo '<img src="https://sun9-41.userapi.com/impg/Cdbroqz5qSxoqUsXCNhN8ghw2bKK9fh_lw8rMw/CWMKtyARlIs.jpg?size=1904x684&quality=95&sign=548108769b75107aff35e0ba94df90df&type=album">';

}
echo '</main>';
echo '<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>';
if(($_SESSION['msg'] != '') or isset($msg)) {
    require "message.php";
    $_SESSION['msg']= '';
}

require "footer.php";