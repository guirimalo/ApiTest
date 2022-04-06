@REQ_PROYEC-34
Feature: API

	#*COMPROBAR *que muestre 404 not found al poner id empleado 99.
	#
	#*#Validación*
	#
	#*#Acciones Realizadas*
	#
	#*#Resultado Esperado y Actual*
	Background: 
		    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'
	@TEST_PROYEC-173 @REQ_PROYEC-31 @TESTSET_PROYEC-54 @404 @8 @8.1 @8.1.9 @API @ID
	Scenario: HU 8 | TS 8.1 | TC 8.1.9 API ID 99 error 404
		Given path '99'
		When method GET
		Then status 404
		And print response
		And print responseStatus
		And print responseTime
		And print responseHeaders

