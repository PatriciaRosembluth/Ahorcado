Feature: Guardar partidas

	Scenario: Guardar partidas
		Given Dado que me encuentro en la pagina de inicio
		And presiono el boton "Ver ultimas partidas"
		Then veo los mensajes "Gano" o "Perdio" segun haya sucedido en las tres ultimas partidas
