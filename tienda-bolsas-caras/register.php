<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

include 'db_connection.php'; // Asegúrate de que esta ruta sea correcta

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $nombre = trim($_POST['first_name']);
    $apellido = trim($_POST['last_name']);
    $correo = trim($_POST['email']);
    $contrasena = password_hash(trim($_POST['password']), PASSWORD_DEFAULT);

    // Validar campos vacíos
    if (empty($nombre) || empty($apellido) || empty($correo) || empty($contrasena)) {
        echo "Por favor, completa todos los campos.";
        exit;
    }

    try {
        // Verificar si el correo ya está registrado
        $sql = "SELECT * FROM clientes WHERE correoElectronico = :correo";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':correo', $correo);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            // Si ya existe, mostrar mensaje de error
            echo "El correo electrónico ya está registrado. Por favor, utiliza otro.";
            exit;
        }

        // Si no existe, insertar el nuevo cliente
        $sql = "INSERT INTO clientes (nombre, apellido, contrasena, correoElectronico) 
                VALUES (:nombre, :apellido, :contrasena, :correo)";
        $stmt = $pdo->prepare($sql);

        // Asignar los parámetros
        $stmt->bindParam(':nombre', $nombre);
        $stmt->bindParam(':apellido', $apellido);
        $stmt->bindParam(':contrasena', $contrasena);
        $stmt->bindParam(':correo', $correo);

        // Ejecutar la consulta
        $stmt->execute();

        // Redirigir al usuario a la página Principal.php
        header("Location: index.php?success=registration_complete");
        exit;
    } catch (PDOException $e) {
        // Si hay un error en la base de datos, mostrar un mensaje
        echo "Error en la base de datos: " . $e->getMessage();
        exit;
    }
}
