Feature: Listar empleado id 7 y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'


@urlOK
  Scenario: get call test 7 and exists 
		Given path '7'
		When method GET
		Then status 200
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders