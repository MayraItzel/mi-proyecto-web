<?php
$host = 'localhost';
$db = 'tienda_bolsas'; // Asegúrate de que este sea el nombre correcto de tu base de datos
$user = 'root';  // Cambia si usas otro usuario
$pass = '';      // Cambia si usas otra contraseña

try {
    $pdo = new PDO("mysql:host=$host;dbname=$db;charset=utf8", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
} catch (PDOException $e) {
    die("Error en la conexión: " . $e->getMessage());
}
?>
