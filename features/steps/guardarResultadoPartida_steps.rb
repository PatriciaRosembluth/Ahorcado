Given(/^Dado que me encuentro en la pagina de inicio$/) do
  visit '/'
end

Given(/^presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^veo los mensajes "(.*?)" o "(.*?)" segun haya sucedido en las tres ultimas partidas$/) do |mesaje1, mensaje2|
  last_response.body.should include #{mensaje1}
  last_response.body.should include #{mensaje2}
end
