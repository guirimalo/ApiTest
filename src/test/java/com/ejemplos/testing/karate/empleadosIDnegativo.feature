Feature: Listar empleados id -1 y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'

    
  @urlKO
  Scenario: get call test -1 and exists 
		Given path '-1'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
