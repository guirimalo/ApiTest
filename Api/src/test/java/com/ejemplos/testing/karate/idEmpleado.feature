Feature: Listar empleados y datos

  Background: 
    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'

  @urlOK
  Scenario: get call test 1 and exists 
		Given path '1'
		When method GET
		Then status 200
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    
  @urlKO
  Scenario: get call test 11 and exists 
		Given path '11'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders 

   @urlKO
  Scenario: get call test 0 and exists 
		Given path '0'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
    @urlKO
  Scenario: get call test -1 and exists 
		Given path '-1'
		When method GET
		Then status 404
		And print response
    And print responseStatus
    And print responseTime
    And print responseHeaders
