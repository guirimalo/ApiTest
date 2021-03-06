@REQ_PROYEC-34
Feature: API

	#*#Validación*
	#COMPROBAR que muestre 404 not found al poner id empleado -1.
	#
	#*#Acciones Realizadas*
	#
	#*#Resultado Esperado y Actual*
			Background: 
		    * url 'https://fakeapi.ivan-aa.repl.co/empleados/id/'
	@TEST_PROYEC-177 @REQ_PROYEC-31 @TESTSET_PROYEC-54 @404 @8 @8.1 @8.1.4 @API @ID
	Scenario: HU 8| TS 8.1 | TC 8.1.5 API ID -1 error 404
		Given path '-1'
		When method GET
		Then status 404
		And print response
		And print responseStatus
		And print responseTime
		And print responseHeaders
