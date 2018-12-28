<?php
    //suscripcion.php
    //Conseguir datos del formulario - Paso 0
    $suscripcion = $_POST['suscripcion'];
    $hoy = date('Y-m-d');
    /* --------------------------------
    1. Conectarnos a la BD.
    2. Crear la query.
    3. Ejecutarla.
    4. Preguntar si funciono.
    -----------------------------------*/
    // 1. Conectarnos a la BD.
    include("conexion.php");

    // 2. Crear la query.
    $insertar = "INSERT INTO newsletter
                VALUES (
                    NULL,
                    '$suscripcion',
                    '$hoy'
                )";

    // 3. Ejecutarla.
    $ejecutar = mysqli_query($conexion, $insertar);
    // $ejecutar llama al archivo conexion y le inserta los valores de insertar.
    if($ejecutar === true) {
        echo "Gracias por suscriberte, en breve recibiras nuestras promociones!!";
    } else {
        echo "Fallo, ver SQL y ponte a rezar :(" . $insertar;
    }
?>