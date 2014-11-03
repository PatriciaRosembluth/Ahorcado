Given(/^Presiono el boton "(.*?)"$/) do |boton|
  click_button(boton)
end

Then(/^veo el mensaje de "(.*?)" y el caracte "(.*?)"$/) do |mensaje, caracter|
  last_response.body.should =~ /#{mensaje}/m
  last_response.body.should =~ /#{caracter}/m
end
