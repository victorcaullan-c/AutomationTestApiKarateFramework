Feature: Test to api
  Background:
    * configure ssl = true
    * def token = 'tXlztPtLdc71gJLN'

@TestUsuario
  Scenario: Creacion de usuario y password en api
    * def users = read('classpath:data/usuarios.json')
    #se esta seleccionando el primer usuario
    * def usuario = users[0]
    Given url baseUrlAuth + '/login'
    And header Content-Type = 'application/json; charset=UTF-8'
    And request { username: '#(usuario.username)', password: '#(usuario.password)' }
    When method post
    Then status 201
    And match response contains { token: '#string' }

@TestPedidoPizza
  Scenario: Pedido de pizza
    Given url baseUrlquickPizza
    And header Content-Type = 'application/json; charset=UTF-8'
    And header Authorization = 'Token ' + token
    And request {maxCaloriesPerSlice: 1000 , mustBeVegetarian:false }
    When method post
    Then status 200

  @TestEjemploGet
  Scenario: Ejemplo test Get
    Given url  baseUrlMethodGet
    And header Content-Type = 'application/json; charset=UTF-8'
    When method get
    Then status 200