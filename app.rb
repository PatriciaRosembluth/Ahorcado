require 'sinatra'

#llenar diccionario de palabras
$words ||= []
$words << 'imagen'
$words << 'eucalipto'
$words << 'casa'

#definir parametros de juego
$total_chances = 5
$wrong_try = 0
$right_guess = ''

get '/' do
  erb :bienvenida
end

post '/elegir_palabra' do
$word = $words[rand($words.length) - 1]
get_placeholder
erb :juego
end

post '/juego' do
$letra=params[:letra]
erb :juego
end

def get_placeholder
  $placeholder = ''
  $word.chars { |char| 
    $placeholder += ($right_guess.include? char)? char : '#'
  }
end