<?php
session_start();
include('db_connection.php');

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $correoElectronico = $_POST['email'];
    $contrasena = $_POST['password'];

    try {
        // Primero, busca en la tabla de empleados
        $stmt = $pdo->prepare("SELECT * FROM empleados WHERE correoElectronico = :correoElectronico");
        $stmt->execute(['correoElectronico' => $correoElectronico]);
        $empleado = $stmt->fetch();

        if ($empleado) {
            // Verificar la contraseña
            if (password_verify($contrasena, $empleado['contrasena'])) {
                // Almacenar los datos del empleado en la sesión
                $_SESSION['empleado_id'] = $empleado['id'];
                $_SESSION['empleado_nombre'] = $empleado['nombre'];  // Guardar el nombre del empleado
                header("Location: admin.php"); // Redirigir a la página de empleados
                exit;
            } else {
                echo "Credenciales inválidas para el empleado.";
            }
        }

        // Si no se encontró el empleado, busca en la tabla de clientes
        $stmt = $pdo->prepare("SELECT * FROM clientes WHERE correoElectronico = :correoElectronico");
        $stmt->execute(['correoElectronico' => $correoElectronico]);
        $cliente = $stmt->fetch();

        if ($cliente) {
            // Verificar la contraseña
            if (password_verify($contrasena, $cliente['contrasena'])) {
                // Almacenar los datos del cliente en la sesión
                $_SESSION['cliente_id'] = $cliente['id'];
                $_SESSION['cliente_nombre'] = $cliente['nombre'];  // Guardar el nombre del cliente
                header("Location: Principal.php"); // Redirigir a la página de clientes
                exit;
            } else {
                echo "Credenciales inválidas para el cliente.";
            }
        }

        // Si no se encontró ni empleado ni cliente
        echo "Credenciales inválidas. Por favor, verifica tu correo electrónico y contraseña.";
        
    } catch (PDOException $e) {
        echo "Error en la base de datos: " . $e->getMessage();
    }
}
?>
