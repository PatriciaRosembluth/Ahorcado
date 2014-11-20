Given(/^Dado que me encuentro en la pagina de inicio$/) do
  visit '/'
end

Given(/^presiono el boton "(.*?)" y anteriormente gane la primera partida$/) do |boton|
  click_button(boton)
end

Then(/^veo el mensajes "(.*?)"$/) do |mensaje|
  last_response.body.should include #{mensaje}
end

Given(/^presiono el boton "(.*?)" y anteriormente perdi la primera partida$/) do |boton|
  click_button(boton)
end


Given(/^Dado que gane la primera y segunda partida$/) do
  $latest_items.include? 'Gano' 
  $latest_items.include? 'Gano' 
end

Then(/^veo en la lista "(.*?)"$/) do |mensajes|
  
end

