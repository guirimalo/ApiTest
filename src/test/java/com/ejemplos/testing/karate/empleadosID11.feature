@REQ_PROYEC-34
Feature: API

	#*COMPROBAR* que muestre 404 not found al poner id empleado 11.
	#*#Validación*
	#
	#*#Acciones Realizadas*
	#
	#*#Resultado Esperado y Actual*
	Background: 
		    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'
	@TEST_PROYEC-176 @REQ_PROYEC-31 @TESTSET_PROYEC-54 @404 @8 @8.1 @8.1.7 @API @ID
	Scenario: HU 8 | TS 8.1 | TC 8.1.7 API ID 11 error 404
		Given path '11'
		When method GET
		Then status 404
		And print response
		And print responseStatus
		And print responseTime
		And print responseHeaders
