<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Contacto Enviado</title>
    <link rel="stylesheet" type="text/css" href="css/estilos.css" />
    <link href="img/favico.png" rel="shortcut icon">    <!--Agrego link favico-->
    <!--Agrego link para font awesome icon-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<body>
    <div class="contenedor">
        <header class="cabecera">   <!--Apertura de cabecera-->
            <img src="img/logo.png" alt="logo">
            <h1>TecnoShinta</h1>
        </header>   <!--Cierre de cabecera-->
        <nav class="navegacion">    <!--Apertura de navegacion-->
            <ul class="menu">
                <li class="menu-item"><a href="index.html">Home</a></li>
                <li class="menu-item"><a href="productos.html">Productos</a></li>
                <li class="menu-item"><a href="promociones.html">Promociones</a></li>
                <li class="menu-item"><a href="empresas.html">Empresas</a></li>
                <li class="menu-item"><a href="hardware.html">Hardware</a></li>
                <li class="menu-item"><a href="accesorios.html">Accesorios</a></li>
                <li class="menu-item"><a href="#">Contactenos</a></li>
            </ul>
        </nav>  <!--Cierre de navegacion-->
        <?php
            //insertarcon.php
            //Conseguir datos del formulario - Paso 0
            $nombre = $_POST['nombre'];
            $apellido = $_POST['apellido'];
            $dni = $_POST['dni'];
            $sexo = $_POST['sexo'];
            $email = $_POST['email'];
            $telefono = $_POST['telefono'];
            $msj = $_POST['msj'];
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
            $insertar = "INSERT INTO datoscontacto
                        VALUES (
                            NULL,
                            '$nombre',
                            '$apellido',
                            '$dni',
                            '$sexo',
                            '$email',
                            '$telefono',
                            '$msj',
                            '$hoy'
                        )";

            // 3. Ejecutarla.
            $ejecutar = mysqli_query($conexion, $insertar);
            // $ejecutar llama al archivo conexion y le inserta los valores de insertar.
            if($ejecutar === true) {
                echo "Insertaste el registro Yay!!";
                //Descripcion de devolucion de datos en correo tecnoshinta@gmail.com
                $destino = "tecnoshinta@gmail.com";		
                $cuerpo = "Fecha de Consulta: $hoy\n\nApellido= $apellido\nNombre= $nombre\nMail= $email\n\nConsulta= $msj";
                $asunto = "Consulta a Tecnoshinta";
                $extra = "From: $email";
                mail ($destino,$asunto,$cuerpo,$extra);		//Orden de como se devuelve la informacion al correo personal
                header("refresh:5;index.html");  //funcion refresh: redirecciona con retardo de 5 segundos
            } else {
                echo "Fallo, ver SQL y ponte a rezar.";
                header("refresh:5;index.php");  //funcion refresh: redirecciona con retardo de 5 segundos
            }
        ?>
        <footer class="pie">
            <div class="pie-item">
                <h3>Categorias</h3>
                <p><a href="">Computadoras</a></p>
                <p><a href="">Tablet</a></p>
                <p><a href="">Impresoras</a></p>
            </div>
            <div class="pie-item">
                <h3>Informacion</h3>
                <p><a href="">Nuestras Sucursales</a></p>
                <p><a href="">Envios a todo el Pais</a></p>
                <p><a href="">Capacitaciones</a></p>
            </div>
            <div class="pie-item">
                <h3>Servicios</h3>
                <p><a href="">Atencion al cliente</a></p>
                <p><a href="">Venta Telefonica</a></p>
                <p><a href="">Atencion Empresas</a></p>
            </div>
            <div class="pie-item">
                <h3>Recibi las ofertas por email</h3>
                <p>Suscribete al newsletter</p>
                <form action="enviar.php">
                    <input type="email" class="newsletter-form_email" placeholder="Ingrese su correo">
                    <input type="submit" class="newsletter-form_submit" value="Suscribirse">
                </form>                    
            </div>
            <div class="pie-copy">
                <p>&copy; Shinta Todos los derechos reservados</p>
            </div>   
        </footer>

    </div>

    
</body>
</html>

