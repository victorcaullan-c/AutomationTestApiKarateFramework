Feature: Test to api
  Background:
    * configure ssl = true
    * def token = 'tXlztPtLdc71gJLN'

@TestUsuario
  Scenario: Creacion de usuario y password en api
    Given url 'https://fakestoreapi.com/auth/login'
    And header Content-Type = 'application/json; charset=UTF-8'
    And request {username : 'donero', password:'ewedon' }
    When method post
    Then status 201
    And match response contains { token: '#string' }

@TestPedidoPizza
  Scenario: Pedido de pizza
    Given url 'https://quickpizza.grafana.com/api/pizza'
    And header Content-Type = 'application/json; charset=UTF-8'
    And header Authorization = 'Token ' + token
    And request {maxCaloriesPerSlice: 1000 , mustBeVegetarian:false }
    When method post
    Then status 200

  @TestEjemploGet
  Scenario: Ejemplo test Get
    Given url 'https://jsonplaceholder.typicode.com/posts'
    And header Content-Type = 'application/json; charset=UTF-8'
    When method get
    Then status 200