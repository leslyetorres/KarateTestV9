Feature: CRUD de usuario

Background: variables globales
  * url 'https://petstore.swagger.io/v2/user/'
  * def username = 'LeslyeTorres26'
  * def firstName = 'Leslye'
  * def lastName = 'Torres'
  * def email = 'leslye.torres@gmail.com'
  * def password = 'password123'
  * def phone = '1234567890'
  * def status = 1

@createUserSuccessfully 
Scenario: Crear un usuario con datos válidos
  Given header Content-Type = 'application/json'
  And request { "id": 0, "username": '#(username)', "firstName": '#(firstName)', "lastName": '#(lastName)', "email": '#(email)', "password": '#(password)', "phone": '#(phone)', "userStatus": #(status) }
  When method post
  Then status 200
  * karate.log('User creado : ' + (username))

@SearchUserCreatedAndUpdate
Scenario: Buscar Y Actualizar el usuario creado
  * karate.log('Username buscado: ' + username)
  Given path (username)
  When method get
  Then status 200
  * def user = response
  * def userId = user.id
  * def firstNameGet = user.firstName
  * def lastNameGet = user.lastName
  * def emailGet = user.email
  * def passwordGet = user.password
  * def phoneGet = user.phone
  * def statusGet = user.userStatus
  * karate.log('Respuesta  del GET: ')
  * karate.log('userId obtenido: ' + userId)
  * karate.log('firstName: ' + firstNameGet)
  * karate.log('lastName: ' + lastNameGet)
  * karate.log('email: ' + emailGet)
  * karate.log('phone: ' + phoneGet)
  * karate.log('status: ' + statusGet)

  * karate.log('Datos a actualizar:')
  * karate.log('firstName: ' + response.firstName)
  * karate.log('lastName: ' + response.lastName)
  * karate.log('email: ' + response.email)

  * def firstNameUP = 'Kristina'
  * def lastNameUP = 'Casanova'
  * def emailUP = 'Kristina.casanova@gmail.com'
  Given path (username)
  And header Content-Type = 'application/json'
  And request {"id": #(userId),"username": '#(username)', "firstName": '#(firstNameUP)', "lastName": '#(lastNameUP)', "email": '#(emailUP)', "password": '#(passwordGet)', "phone": '#(phoneGet)', "userStatus": #(statusGet) }
  When method put
  Then status 200
  * karate.log('Response after PUT: ' + karate.toJson(response))
  * karate.log('Message: ' + response.message)
  * karate.log('Code: ' + response.code)
  * karate.log('Type: ' + response.type)
  * karate.log('usuario actualizado con exito con los datos:')
  * karate.log('Nombre actualizado: ' + firstNameUP)
  * karate.log('Apellido actualizado: ' + lastNameUP)
  * karate.log('Correo actualizado: ' + emailUP) 

  * karate.log('Verificando los datos actualizados para el usuario: ' + username)
  Given path (username)
  When method get
  Then status 200
  Then match response.username == username
  Then match response.firstName == firstNameUP  
  Then match response.lastName == lastNameUP  
  Then match response.email == emailUP
  * karate.log('Usuario actualizado Verificado')

@deleteUserSuccessfully 
Scenario: Buscar el usuario creado
  * karate.log('Username a eliminar: ' + username)
  Given path (username)
  When method Delete
  Then status 200
  * karate.log('Usuario eliminado con exito')