Feature: Listar empleados y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/'

  @urlOK
  Scenario: get call test 'empleados' and exists 
		Given path 'empleados'
		When method GET
		Then status 200
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    
  @urlKO
  Scenario: get call test 'clientes' and exists 
		Given path 'clientes'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders 
