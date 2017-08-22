require_relative "ui"
require_relative "ranking"

def le_arquivo_cidades
	cidadesFile = File.read "cidades.txt"
	arrayCidades = cidadesFile.split "\n"
end

def seleciona_palavra_secreta
	dicionario_de_palavras = le_arquivo_cidades
	index_dicionario = rand(dicionario_de_palavras.size)
	dicionario_de_palavras[index_dicionario].downcase
end

def calcula_pontuacao(pontuacao)
	pontuacao - 100
end

def verifica_letra(palavra_secreta, caracter)
	contador_de_acertos = palavra_secreta.count caracter
	acertou = contador_de_acertos > 0
	if acertou
		exibe_total_de_acertos contador_de_acertos
		errou = false
	else
		exibe_msg_erro
		errou = true
	end
	return errou
end

def verifica_palavra(palavra_secreta, palavra)
	acertou = palavra_secreta == palavra
	if acertou
		exibe_msg_acerto
		fim_de_jogo = true
		errou = false
	else 
		exibe_msg_erro
		errou = true
	end
	return errou, fim_de_jogo
end

def analisa_tentativa palavra_secreta, letra_palavra, pontuacao, erros, tentativas

	acertos_palavra_secreta = retorna_palavra_secreta_mascarada palavra_secreta, tentativas

	if letra_palavra.size > 1
		errou, fim_de_jogo = verifica_palavra palavra_secreta, letra_palavra
	else
		errou = verifica_letra palavra_secreta, letra_palavra
		existe_lacunas = acertos_palavra_secreta.count("_") > 0
		fim_de_jogo = !existe_lacunas
		exibe_palavra_mascarada acertos_palavra_secreta
	end

	if errou
		pontuacao = calcula_pontuacao pontuacao 
		erros += 1
	end

	desenha_forca erros

	return pontuacao, erros, fim_de_jogo
end 

def retorna_palavra_secreta_mascarada (palavra_secreta, tentativas)
	palavra_mascarada = ""
	for caracter in palavra_secreta.chars
		if tentativas.include? caracter
			palavra_mascarada << caracter
		else 	
			palavra_mascarada << "_"
		end
	end
	palavra_mascarada
end

def jogo
	jogador = boas_vindas

	campeao = le_melhor_pontuador

	if !campeao.empty?
		exibe_informacao_do_campeao campeao
	end

	palavra_secreta = seleciona_palavra_secreta
	tentativas = []
	exibe_escolha_palavra_secreta palavra_secreta
	exibe_palavra_mascarada(retorna_palavra_secreta_mascarada palavra_secreta, tentativas)
	vidas = 5
	erros = 0
	pontuacao = 1000
	
	exibe_saudacao_para_comecar
	while erros < vidas
		chances = vidas - erros
		letra_palavra = solicita_chute

		if tentativas.include? letra_palavra
			exibe_msg_chute_ja_realizado letra_palavra
			next
		end

		exibe_total_de_chances chances

		tentativas << letra_palavra

		exibe_tentativas tentativas
		
		pontuacao, erros, acertou = analisa_tentativa palavra_secreta, letra_palavra, pontuacao, erros, tentativas

		if acertou
			avisa_acertou_palavra
			break 
		end

		exibe_total_de_erros erros
	end

	grava_campeao campeao, jogador, pontuacao.to_i

	exibe_palavra_secreta palavra_secreta

	exibe_pontuacao pontuacao

end

def inicia_jogo
	loop do 
		jogo
		break if !deseja_jogar_novamente
	end
end