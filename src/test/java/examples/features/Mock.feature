Feature: Mock API

  Background:
    * def responses = read('../data/users.json')
    * def getResponse = responses.data
    * def postResponse = responses.post

  Scenario: pathMatches('/api/users/2') && methodIs('get')
    * def response = getResponse
    * def responseStatus = 200
    * def responseHeaders = { 'Content-Type': 'application/json' }
    * print 'Response: ', response

  Scenario: pathMatches('/api/users') && methodIs('post')
    * def response = postResponse
    * def responseStatus = 201
    * def responseHeaders = { 'Content-Type': 'application/json' }
    * print 'Response: ', response
