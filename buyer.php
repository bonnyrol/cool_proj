<h1>История покупок:</h1>
<?php
$result = $conn->query("SELECT * FROM consumable_invoice");

while ($row = $result->fetch()) {
    echo'  
        <div class="card border-dark mb-3" >
            <div class="card-header"> ' . 'ID покупателя - ' . $row['id'] .'</div>
            <div class="card-body text-dark">
                <div class="row g-0"> 
                    <div class="col-md-10">      
                        <p class="card-text">' . 'Имя покупателя - ' .$row['buyer']  .'</>
                        <p class="card-text">' . 'Дата и время покупки - ' .$row['ci_datetime']  .'</>      
                    </div>            
                </div>             
            </div>           
        </div>
 
    ';
}
?>