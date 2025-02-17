Feature: Actualizar un usuario

Background:
  * url 'https://petstore.swagger.io/v2/user/'
  * def result = call read('CreateUser.feature')
  * def usernameC = result.usernameC
    * def firstNameUP = 'Kristina'
      * def lastNameUP = 'Casanova'
* def emailUP = 'Kristina@gmail.com'
@updateNamesEmailUser 
Scenario: Crear un usuario con datos válidos
  * karate.log('Username buscado: ' + karate.get('usernameC'))
  Given path karate.get('usernameC')
  And header Content-Type = 'application/json'
  And request { "firstName": '#(firstNameUP)', "lastName": '#(firstNameUP)', "email": '#(emailUP)' }
  When method put
  Then status 200
  * karate.set('firstNameUP', firstNameUP)
    * karate.set('lastNameUP', lastNameUP)
    * karate.set('emailUP', emailUP)