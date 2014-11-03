Feature: Bienvenida

	Scenario: Pagina inicio
		Given dado que me encuentro en la pagina principal
		Then Veo el mensaje "Bienvenido Al Juego Ahorcado", la imagen "ahorcado.jpg" y el boton de "Jugar"
