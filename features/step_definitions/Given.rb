=begin
Legendas
1 - Feature Cadastro
2 - Feature Fale Conosco
3 - Feature Login
4 - Feature de Recuperar Senha
5 - Feature Busca
=end

#1 2 3 5
Given (/^[Eu ]*estou na pagina inicial$/) do
	visit root_path
end
#4
Given (/^[Eu ]*estou na pagina de login$/) do
	visit "/entrar"
end
#5
Given (/^[Eu ]*estou na pagina de busca$/) do
	visit "/busca"
end
