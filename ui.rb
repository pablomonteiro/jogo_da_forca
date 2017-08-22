def boas_vindas
	puts "/*******************************/"
	puts "/                               /"
	puts "/         Jogo da Forca!        /"
	puts "/                               /"
	puts "/*******************************/"
	puts "\n"
	puts "Informe o nome do jogador"
	jogador = gets.strip
	puts "\n\n\n\n"
	puts "Olá, #{jogador}! Seja bem-vindo ao jogo!"
	desenha_forca 0
	puts "\n\n\n"
	jogador
end

def desenha_forca(erros)
    cabeca = "   "
    corpo = " "
    pernas = "   "
    bracos = "   "
    if erros >= 1
        cabeca = "(_)"
    end
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{cabeca}  "
    puts " |      #{bracos}  "
    puts " |       #{corpo}  "
    puts " |      #{pernas}  "
    puts " |              "
    puts "_|___           "
    puts

end

def exibe_escolha_palavra_secreta(palavra_secreta)
	puts "Escolhendo palavra para adivinhação..."
	puts "Palavra escolhida! A palavra que possui #{palavra_secreta.size} caracteres."
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

def exibe_palavra_mascarada(acertos_palavra_secreta)
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

def exibe_tentativas tentativas
	puts "******************"
	puts "Tentativas: #{tentativas}"
	puts "******************"
end

def deseja_jogar_novamente
	puts "Deseja jogar novamente? (S/N)"
	resposta = gets.strip
	resposta.upcase == "S"
end

def exibe_palavra_secreta(palavra_secreta)
	puts "\n\n ******************"
	puts "A palavra secreta foi #{palavra_secreta}"
	puts "******************\n\n "
end

def exibe_informacao_do_campeao(campeao)
	nome = campeao[0]
	pontuacao = campeao[1]
	puts "/*************************************************/"
	puts "  Atual Campeão: #{nome} com #{pontuacao} pontos."
	puts "/*************************************************/"
	puts "\n\n\n"
end

def avisa_acertou_palavra
        puts "\nParabéns, você ganhou!"
        puts

        puts "       ___________      "
        puts "      '._==_==_=_.'     "
        puts "      .-\\:      /-.    "
        puts "     | (|:.     |) |    "
        puts "      '-|:.     |-'     "
        puts "        \\::.    /      "
        puts "         '::. .'        "
        puts "           ) (          "
        puts "         _.' '._        "
        puts "        '-------'       "
        puts
end