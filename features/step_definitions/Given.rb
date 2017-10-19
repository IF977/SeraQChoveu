Given (/^[Eu]*clique no botao ([^Cadastro]*)$/) do	
    visit (root_path)
end

Given (/^[Eu]*clique no botao ([^Comentário]*)$/) do
	visit (new_comentario_path)
end
