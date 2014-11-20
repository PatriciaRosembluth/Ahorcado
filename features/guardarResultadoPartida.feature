Feature: Guardar partidas

	Scenario: Guardar primera partida ganada
		Given Dado que me encuentro en la pagina de inicio
		And presiono el boton "Ver ultimas partidas" y anteriormente gane la primera partida
		Then veo el mensajes "Gano"

	Scenario: Guardar primera partida perdida
		Given Dado que me encuentro en la pagina de inicio
		And presiono el boton "Ver ultimas partidas" y anteriormente perdi la primera partida
		Then veo el mensajes "Perdio" 

	Scenario: Guardar segunda partida ganada
		Given Dado que gane la primera y segunda partida
		Then veo en la lista "Gano Gano"
