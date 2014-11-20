Feature: Juego

	Scenario: Pagina de juego
		Given dado que me encuentro en la pagina principal
		And Presiono el boton "Jugar"
		Then veo el mensaje de "Adivina la palabra" y el caracte "#" 

	Scenario: Palabra oculta
		Given dado que me encuentro en la pagina de juego
		And la palabra seleccionada es "camioneta"
		Then veo el mensaje de "Adivina la palabra" y la palabra oculta "#########"

	Scenario: Adivinar una letra
		Given dado que me encuentro en la pagina de juego
		And la palabra a adivinar es "licuadora" y el usuario ingresa la letra "a"
		Then veo el mensaje de "Adivina la palabra" y la palabra oculta "####a###a"
		
	Scenario: Pedir pista
		Given dado que me encuentro en la pagina de juego 
		And la palabra a adivinar es "dormitorio" y la pista es la letra es "o"
		Then veo el mensaje de "Adivina la palabra" y la palabra oculta "#o####o##o"

	