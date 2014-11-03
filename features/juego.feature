Feature: Juego

	Scenario: Pagina de juego
		Given dado que me encuentro en la pagina principal
		And Presiono el boton "Jugar"
		Then veo el mensaje de "Adivina la palabra" y el caracte "#" 