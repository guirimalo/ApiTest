Feature: Mostrar Home

  Scenario: Al usuario se le muestra la informacion de la pagina Home desde fuera del dominio
		Given El usuario quiere acceder a la pagina Home desde chrome
		When el usuario accede a la pagina a traves de la URL LucAPI - Home
		Then se le muestra la informacion inicial de la pagina.

