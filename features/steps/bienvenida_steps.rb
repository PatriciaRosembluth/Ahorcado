Given(/^dado que me encuentro en la pagina principal$/) do
  visit '/'
end

Then(/^Veo el mensaje "(.*?)", la imagen "(.*?)" y el boton de "(.*?)"$/) do |mensaje, imagen, boton|
  last_response.body.should =~ /#{mensaje}/m
  last_response.should have_xpath("//img[@src=\"/public/images/#{imagen}\"]")
  click_button(boton)
end

