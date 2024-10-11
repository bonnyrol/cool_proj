<h1>Товары:</h1>
<?php
$result = $conn->query("SELECT * FROM product");

while ($row = $result->fetch()) {
    echo'
        
        <div class="card border-dark mb-3" >
            <div class="card-header"> ' . $row['product_name'] . '</div>
            <div class="card-body text-dark">
                <div class="row g-0">
                    <div class="col-md-1">  
                        <img src="'.$row['img'].'" alt="Task picture" height="75px">
                        
                    </div>
                    <div class="col-md-7">
                    <a class="nav-link" >
                        <h5 class="card-title">' . 'Арктиул товара - ' . $row['id'] . '</h5>
                        <p class="card-text">' . 'Вес товара - ' .$row['weight'] . ' ' .'кг' .'</p>
                    </a>
                    </div>
                    <div class="col-md-1">
                        <a href="deleteproduct.php?id='.$row['id'].'" class="btn btn-danger">Удалить</a>
                    </div> 
                    
                </div>
            </div>
            
        </div>
 
    ';
}
?>

<h2>Добавить новый товар</h2>
<div class="container">

    <form method="post" action="insertproduct.php">

        <label for="cat" class="col-form-label col-sm-2">
            Категория:
        </label>
        <div class="col-sm-3">
            <select class="form-select"
                   name="category" id="cat" required>
                <?php
                    $result = $conn->query("SELECT * FROM product_category");

                    while($row = $result->fetch()) {
                       echo '<option value="'.$row['id'].'">'.$row['category_name'] . '</option>';
                    }
                ?>
            </select>

        </div>

        <label for="product" class="col-form-label col-sm-2">
            Название товара:
        </label>
        <div class="col-sm-3">
            <input class="form-control" type="text"
                   name="name" id="product" required>
        </div>

        <label for="wth" class="col-form-label col-sm-2">
            Вес товара в кг:
        </label>
        <div class="col-sm-3">
            <input class="form-control" type="text"
                   name="weight" id="wth" required>
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
