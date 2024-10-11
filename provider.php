<h1>История поставок:</h1>
<?php
$result = $conn->query("SELECT * FROM receipt_invoice");

while ($row = $result->fetch()) {
    echo'
        
        <div class="card border-dark mb-3" >
            <div class="card-header"> ' . 'ID поставщика - ' . $row['id'] .'</div>
            <div class="card-body text-dark">
                <div class="row g-0"> 
                    <div class="col-md-10">                
                        <p class="card-text">' . 'Имя поставщика - ' .$row['provider']  .'</>
                        <p class="card-text">' . 'Дата и время поставки - ' .$row['ri_datetime']  .'</>   
                    </div>            
                </div>             
            </div>           
        </div>
 
    ';
}
?>