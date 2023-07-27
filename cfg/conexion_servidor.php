<?php
// SERVIDOR EN yonar ES ELKIZEN pero con usuario janvera@gmail
// $servername = "localhost";
// $username = "id18639165_yonar";
// $password = "Libertonim0$";
// $dbname = "id18639165_basedatos";

// SERVIDOR yonar@gmail.com
// $servername = "localhost";
// $username = "id20940221_janvera";
// $password = "Libertonim0$";
// $dbname = "id20940221_q";
//EN GHOST LOCAL
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "q";
try {
    // Crear la conexión con PDO
    $conexion = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Configurar el modo de error para lanzar excepciones en caso de errores
    $conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    // No imprimir el mensaje de conexión exitosa aquí
} catch (PDOException $e) {
    die("Error de conexión: " . $e->getMessage());
}
?>
