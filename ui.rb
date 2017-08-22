def boas_vindas
	puts "Bem-vindo ao Jogo da Forca!"
	puts "Informe o nome do jogador"
	jogador = gets.strip
	puts "Olá, #{jogador}!"
	puts "\n\n\n"
	jogador
end

def exibe_escolha_palavra_secreta(palavra_secreta)
	puts "Escolhendo palavra para adivinhação..."
	puts "Palavra escolhida! A palavra que possui #{palavra_secreta.size} caracteres."
	puts "\n\n\n"
end

def exibe_total_de_acertos(contador_de_acertos)
	puts "Voçê acertou #{contador_de_acertos} letras na palavra."
end

def exibe_msg_acerto
	puts "Parabéns!!! Você acertou!!!"
end

def exibe_msg_erro
	puts "Você errou!"
end

def exibe_chutes_acertados(acertos_palavra_secreta)
	puts "\n\n"
	puts "A palavra é #{acertos_palavra_secreta}."
	puts "\n\n"
end

def exibe_saudacao_para_comecar
	puts "Vamos começar?"
end

def solicita_chute
	puts "Digite uma letra ou palavra..."
	letra_palavra = gets.strip.downcase
	letra_palavra
end

def exibe_total_de_chances(chances)
	puts "Você tem #{chances} chances para acertar a palavra."
	puts "\n\n\n"
end

def exibe_total_de_erros(erros)
	puts "Total de erros #{erros}."
	puts "\n\n\n"
end

def exibe_pontuacao(pontuacao)
	puts "Sua pontuação foi de #{pontuacao} pontos."
end
def exibe_msg_chute_ja_realizado(letra_palavra)
	puts "Você já digitou '#{letra_palavra} antes, tente outra."
end

def deseja_jogar_novamente
	puts "Deseja jogar novamente? (S/N)"
	resposta = gets.strip
	resposta.upcase == "S"
end

def exibe_palavra_secreta(palavra_secreta)
	puts "\n\n *********"
	puts "A palavra secreta foi #{palavra_secreta}"
	puts "*********\n\n "
end

def exibeInformacaoDoCampeao(campeao)
	nome = campeao[0]
	pontuacao = campeao[1]
	puts "Melhor Pontuação: #{nome} com #{pontuacao} pontos."
