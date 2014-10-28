Given(/^dado que me encuentro en la pagina principal$/) do
  visit '/'
end

Then(/^Veo el mensaje "(.*?)" y la imagen "(.*?)"$/) do |mensaje, imagen|
  last_response.body.should =~ /#{mensaje}/m
  last_response.should have_xpath("//img[@src=\"/public/images/#{imagen}\"]")
end

