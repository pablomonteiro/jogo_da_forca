
def le_melhor_pontuador
	rank = File.read("rank.txt")
	melhor_pontuador = rank.split "\n"
end

def atualiza_campeao jogador, pontuacao
	conteudo = "#{jogador}\n#{pontuacao}"
	File.write "rank.txt", conteudo
end	

def grava_campeao campeao_atual, jogador, pontuacao
	if campeao_atual.empty?
		atualiza_campeao jogador, pontuacao
	else
		pontuacao_campeao_atual = campeao_atual[1].to_i
		if pontuacao > pontuacao_campeao_atual
			atualiza_campeao jogador, pontuacao
		end
	end

end