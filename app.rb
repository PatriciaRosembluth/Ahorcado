require 'sinatra'

#llenar diccionario de palabras
def iniciar_juego
$words ||= []
$words << 'imagen'
$words << 'eucalipto'
$words << 'casa'

#definir parametros de juego
$total_chances = 5
$wrong_try = 0
$right_guess = ''
char = ''
$track = ''
	
end

get '/' do
	erb :bienvenida
end

post '/elegir_palabra' do
	iniciar_juego
	$word = $words[rand($words.length) - 1]
	get_placeholder
	erb :juego
end

post '/juego' do
	game
	erb :juego
end

post '/pedir_pista' do
	$track = $word[rand($word.length) - 1]
	while $right_guess.include? $track
		$track = $word[rand($word.length) - 1]
	end
		params[:letra] = $track
		$wrong_try += 1	 
		game
		erb :juego
	
end


def get_placeholder
  $placeholder = ''
  $word.chars { |char| $placeholder += ($right_guess.include? char)? char : '#'}
  unless $placeholder.include? '#'
	 erb :win
	end
end

def game ()
	char = params[:letra]
	if $word.include? char
		if($right_guess.include? char)
	    	#mensaje 'ya se ingreso la letra'
	      erb :bienvenida
	    else
	      $right_guess = $right_guess + char.to_s
	      get_placeholder
	      erb :juego
	    end
	else
	  #mensaje de error
	   $wrong_try += 1	 
	   if ($wrong_try == $total_chances)
	    erb :lose      
	      
	    else
	     erb :juego
	    end
	end
	
end