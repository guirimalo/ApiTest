Feature: Listar empleados id 0 y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'


  @urlKO
  Scenario: get call test 0 and exists 
		Given path '0'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    