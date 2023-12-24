Feature: Crud Person

  Background:
    * url 'http://localhost:8081/'

  @Smoke
  Scenario: Crud Person End to End
    * def randomId = function() { return Math.floor(Math.random() * 10000) + 1 }
    * def id = randomId()

    Given path 'posts'
    And request
      """
      {
        "id": '#(id)',
        "title": "jose",
        "author": "karate"
      }
      """

    When method POST
    Then status 201

    Given path 'posts',id

    When method GET
    Then status 200
    Then match response == { id: '#(id)', title: 'jose', author: 'karate' }
