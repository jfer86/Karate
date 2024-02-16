Feature: Mock API

Background:
    * def responses = read('../data/mockResponse.json')
    * def handleResponse = read('handleResponse.js')

Scenario: pathMatches('/General-APIs/v1/transactions/transUnionValidation') && methodIs('post')
    * def idNumber = karate.get('request.idNumber')
    * def response = responses[idNumber]
    * eval handleResponse(response)
    * def responseHeaders = { 'Content-Type': 'application/json' }
    