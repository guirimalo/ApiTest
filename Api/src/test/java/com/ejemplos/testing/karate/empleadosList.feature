@PROYEC-194
@REQ_PROYEC-34
Feature: API


	@TEST_PROYEC-95 @REQ_PROYEC-37 @TESTSET_PROYEC-47 @12 @12.1 @12.1.8 @datosEmpleados
	Scenario: HU 12 | TS 12.1 | TC 12.1.8 API muestra todos los datos empleados
		Background: 
				    * def urlBase = 'https://fakeapi.ivan-aa.repl.co'
		  			* def usersPath = '/empleados'
				Given url urlBase + usersPath
				When method GET
				Then status 200
				And print response
				And print responseStatus
				And print responseTime
				And print responseHeaders