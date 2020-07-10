Aplicaccion para Backen de una biblioteca, el objetivo de esta Backend es poder llevar los registros de y base de las gestion de "Library Gestion".

## Available Scripts

Una vez Clonado en Repositorio debe de entrar a su carpera y ejecutar el siguente comando

### `npm i`

Para actualziar e instalara las dependencias y el siguente comando para desplegar la aplicacion

### `npm start`

La aplicación corre en la siguiente dirección.<br />
Open [http://localhost:3500](http://localhost:3500) to view it in the browser.

Se ejecuta en modo desarrollo, Posteriormente se puede pasar a Producion<br />
You will also see any lint errors in the console.

Dentro del repositorio contiene un archivo .sqlite para la base con registros de muestra ya estrablecidos

para Administrador usar desde el front:
<!--Solo datos de pruebas estos se pueden modificar ya teniendo corriendo el servidor-->
///Username: efren.almanza@gmail.com
///Password: qwerty

Así como un script para construir la base de datos

EL ORM implementado es sequelize [https://sequelize.org/]

Se utiliza para la autentificacion de las rutas y rutas protegidas JWT y generacion de tokens [https://jwt.io/]

Para ello se debe crear una un archivo .env la raiz del proyecto con la siguiente informacion

### `JWT_SECRET='clave_super_secreta'`

Esto si se van autilizar los datos de prueba que ya existen en la base y el FrontEnd o se puede implementar su propia clave para produccion

Además se tiene implementado
## winston
## winston-daily-rotate-file

Para los logs del mismo servidor

En la Carpera /src es la raíz de la aplicación

/logger los losg del servidor
/middelware valida las rutas protegidas que las peticiones venga con un token valido
/persitence Modelos de datos
/routes  rutas y verbos de petición
/index.js archivo principal

Arbol de Rutas

/src
/---logger
/---middleware
/---persistence
/------/models
/------connection.js
/routes
index.js

 Esta aplicacion aun no esta completa aun se puede mejora con esstas sugerencias

 1.-Verificar que Correo y userName ya exita en la base de datos anntes de crearlo
 

