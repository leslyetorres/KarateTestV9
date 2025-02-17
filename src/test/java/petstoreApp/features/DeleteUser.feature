Feature: Eliminar usuario

Background:
  * url 'https://petstore.swagger.io/v2/user/'
  * def result = call read('CreateUser.feature')
  * def usernameC = result.usernameC
@deleteUserSuccessfully 
Scenario: Buscar el usuario creado
  * karate.log('Username buscado: ' + karate.get('usernameC'))
  Given path karate.get('usernameC')
  When method Delete
  Then status 200