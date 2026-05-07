# FutbolWebApp

Proyecto WebApp en DataFlex Studio 25.0 con base de datos MySQL/MariaDB.

## Requisitos

- DataFlex Studio 25.0
- XAMPP, MySQL o MariaDB
- Driver ODBC de MySQL de 64 bits

## Base de datos

1. Crear una base de datos llamada `futbol`.
2. Importar el archivo `futbolBD.sql` incluido en este repositorio.
3. Crear un DSN ODBC de 64 bits llamado `MYSQL_DF` apuntando a la base `futbol`.
   - Usuario: `root`
   - Password: vacio, salvo que se haya configurado otro en MySQL/XAMPP.

## Ejecutar

1. Abrir `futbolwp.sws` con DataFlex Studio 25.0.
2. Compilar `WebApp.src`.
3. Ejecutar la WebApp.
4. URL local esperada:

```text
http://localhost/futbolwp/Index.html
```

## Contenido

La aplicacion incluye vistas de consulta y detalle para:

- Ligas
- Equipos
- Jugadores
- Entrenadores
- Posiciones
