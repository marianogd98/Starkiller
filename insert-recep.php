
<?php
//insert.php;

if(isset($_POST["item_day"]))
{
    require_once 'php/connect.php';
    $con=new Connection();
    $conexion= $con->Connect();
    // $order_id = uniqid();
    for($count = 0; $count < count($_POST["item_day"]); $count++)
    {  
        $query = "INSERT INTO data_reception 
        (id, day, arrival, departure, pax, close, occupation, note, date) 
        VALUES (null, :day, :arriv, :depar, :pax, :close, :occu, :note, CURRENT_TIMESTAMP())";
        $statement = $conexion->prepare($query);
        $statement->execute(
            array(
                // ':order_id'   => $order_id,
                ':day'  => $_POST["item_day"][$count], 
                ':arriv' => $_POST["item_arrival"][$count], 
                ':depar'  => $_POST["item_depart"][$count],
                ':pax'  => $_POST["item_pax"][$count], 
                ':close'  => $_POST["item_close"][$count],
                ':occu'  => $_POST["item_occu"][$count], 
                ':note' => $_POST["item_note"][$count]
                )
            );
        }
        $result = $statement->fetchAll();
        if(isset($result))
        {
            echo 'ok';
        }
    }
?>
