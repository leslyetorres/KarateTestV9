Feature: Crear un usuario

Background:
  * def usernameC = 'leslye123123'
@createUserSuccessfully 
Scenario: Crear un usuario con datos válidos
  Given url 'https://petstore.swagger.io/v2/user'
  And header Content-Type = 'application/json'
And request { "id": 0, "username": '#(usernameC)', "firstName": "Leslye", "lastName": "Torres", "email": "Leslye@gmail.com", "password": "password123", "phone": "1234567890", "userStatus": 1 }
  When method post
  Then status 200
  * karate.set('usernameC', usernameC)