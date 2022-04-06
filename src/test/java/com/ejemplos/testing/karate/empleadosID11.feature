Feature: Listar empleado id 11 y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'


  @urlKO
  Scenario: get call test 11 and exists 
		Given path '11'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders 
   