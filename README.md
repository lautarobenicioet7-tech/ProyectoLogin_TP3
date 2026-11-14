# Proyecto Login

**Alumno:** Lautaro Benicio
**Materia:** Analisis de Sistemas
**Año de cursada:** 2026

## Descripción

Sistema de login con registro de usuarios y un dashboard protegido por sesión.

## Tecnologías

- Front-end: HTML5, CSS3 y JavaScript
- Back-end: PHP 8
- Base de datos: MySQL (puerto 3306)
- Servidor local: XAMPP (Apache, puertos 80 y 443)
- Herramientas: MySQL Workbench, Visual Studio Code, Git y GitHub

## Funcionalidades

- Inicio de sesión con correo y contraseña
- Registro de nuevos usuarios con confirmación de contraseña
- Validación de campos vacíos con el atributo `required` y con JavaScript
- Validación de correo @gmail.com y de contraseña segura (mínimo 8 caracteres, mayúscula, minúscula, número y símbolo)
- Contraseñas encriptadas con `password_hash`
- Consultas preparadas (PDO) contra inyección SQL
- Dashboard con mensaje de bienvenida y cierre de sesión
- Diseño responsive

## Instalación

1. Instalar XAMPP e iniciar Apache y MySQL.
2. Copiar la carpeta `ProyectoLogin_TP3` dentro de `C:\xampp\htdocs\`.
3. Abrir MySQL Workbench, conectarse a `127.0.0.1:3306` y ejecutar el archivo `base_login.sql`. Este crea la base `db_proyecto_login`, el usuario de la aplicación y la tabla `usuarios`.
4. Editar `db_connect.php` con el nombre de la base, el usuario y la clave creados en el paso anterior.
5. Abrir `http://localhost/ProyectoLogin_TP3/login.php`.

## Estructura de la base de datos

```sql
CREATE TABLE usuarios (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  apellido VARCHAR(100) NOT NULL,
  email VARCHAR(200) NOT NULL UNIQUE,
  password_hash VARCHAR(255) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
```

## Archivos principales

- `login.php`: formulario de inicio de sesión
- `register.php`: formulario de alta de usuario
- `dashboard.php`: vista protegida con bienvenida
- `logout.php`: cierre de sesión
- `db_connect.php`: conexión a la base de datos
- `auto.js`: validaciones en JavaScript
- `estilo.css`: estilos de la aplicación
- `base_login.sql`: script de creación de la base de datos

## Uso

1. Crear una cuenta desde "¿No tenés cuenta? Crear una".
2. Iniciar sesión con el correo y la contraseña registrados.
3. En el dashboard se muestra el mensaje de bienvenida. El botón "Cerrar sesión" vuelve al login.