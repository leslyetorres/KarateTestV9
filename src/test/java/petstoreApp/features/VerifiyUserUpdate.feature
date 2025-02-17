Feature: Buscar usuario

Background:
  * url 'https://petstore.swagger.io/v2/user/'
  * def result1 = call read('CreateUser.feature')
  * def result2 = call read('UpdateUser.feature')
  * def usernameC = result1.usernameC
  * def firstNameUP = result2.firstNameUP
  * def lastNameUP = result2.lastNameUP
  * def emailUP = result2.emailUP
@verifyUpdateUser
Scenario: Verificar el actualizacion de datos de usuario
  * karate.log('Username buscado: ' + karate.get('usernameC'))
  Given path karate.get('usernameC')
  When method get
  Then status 200
  Then match response.username == usernameC
  Then match response.firstName == firstNameUP  
  Then match response.lastName == lastNameUP  
  Then match response.email == emailUP  