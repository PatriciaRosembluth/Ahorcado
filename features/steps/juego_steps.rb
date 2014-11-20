Given(/^Presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^veo el mensaje de "(.*?)" y el caracte "(.*?)"$/) do |mensaje, caracter|
  last_response.body.should =~ /#{mensaje}/m
  last_response.body.should =~ /#{caracter}/m
end

Given(/^dado que me encuentro en la pagina de juego$/) do
  visit '/juego'
end

Given(/^la palabra seleccionada es "(.*?)"$/) do |palabra|
  $word = palabra
end

Then(/^veo el mensaje de "(.*?)" y la palabra oculta "(.*?)"$/) do |mensaje, palabra_oculta|
  last_response.body.should include #{mensaje}
  last_response.body.should include #{palabra_oculta}
end

 Given(/^la palabra a adivinar es "(.*?)" y el usuario ingresa la letra "(.*?)"$/) do |palabra_oculta, letra|
  last_response.body.should include #{letra}
  last_response.body.should include #{palabra_oculta}
end

Given(/^la palabra a adivinar es "(.*?)" y la pista es la letra es "(.*?)"$/) do |palabra_oculta, pista|
  last_response.body.should include #{pista}
  last_response.body.should include #{palabra_oculta}
end




