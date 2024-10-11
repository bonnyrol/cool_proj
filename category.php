<h1>Категории:</h1>
<?php
$result = $conn->query("SELECT * FROM product_category");

while ($row = $result->fetch()) {

    echo'
        
        <div class="card border-dark mb-3" >
            <div class="card-header"> ' . 'ID категории - ' . $row['id'] .'</div>
            <div class="card-body text-dark">
                <div class="row g-0"> 
                    <div class="col-md-10">
                    <a class="nav-link" href="/index.php?page=b" >                  
                        <p class="card-text">' . 'Категория - ' .$row['category_name'] . '</>
                        </a>          
                    </div>                 
                </div>             
            </div>           
        </div>
 
    ';

}
?>

<h2>Добавить новую категорию</h2>
<form action="insertcategory.php" method="post" enctype="multipart/form-data">
    <p><label>
            Название категории: <input type="text" class="form-control" name="name">
        </label>


    <p><input class="btn btn-primary"type="submit" value="Добавить">
</form>
