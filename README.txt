Proyecto Karate API Test
Proyecto contiene pruebas automatizadas de API utilizando de apis provenientes de petstore

Características
En este proyecto se basa en la implementacion de pruebas para interactuar con el Petstore API,
los flujos referentes al manejo de usuario: creacion,busqueda,actualizacion y eliminacion.

El flujo de prueba se compone de los siguientes pasos:
• Creacion de un usuario
• Busqueda del usuario creado
• Actualizacion del nombre y el correo del usuario
• Verificacion del usuario actualizado
• Eliminacion del usuario

Documentacion de apoyo de Karate:
Menciona  pasos y, configuraciones e informacion valiosa para desarrollo del ambiente
https://github.com/karatelabs/karate?tab=readme-ov-file#quickstart

Antes de iniciar
1. Revisar archivo base, verificar que los settings son compatibles con versiones del SO donde se ejecutara el proyecto (maven version 3.9.9 , JDK 17,
Karate framework)

Paquetes
src                                 -arquitectura de automatizacion
src/test/java//petstore             -Paquete donde están los runners y pruebas
src/test/java//petstore/features    -Directorio donde se encuentran las definiciones de pruebas
¿Como ejecutar pruebas?
Ejecutar Runners con comandos:
mvn test -Dtest=CreateUserRunner- Ejecutar Runner se creacion de usuario
mvn test -Dtest=SearchUserRunner - Ejecutar Busqueda del usuario creado
mvn test -Dtest=UpdateUserRunner - Ejecutar actualizacion del usuario creado
mvn test -Dtest=VerifyUserRunner - Ejecutar verificacion de actializacion del usuario
mvn test -Dtest=DeleteUserRunner - Ejecutar actualizacion del usuario creado
mvn test -Dtest=UserTestRunner - Ejecutar flujo completo



