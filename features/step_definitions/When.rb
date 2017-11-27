=begin
Legendas
1 - Feature Cadastro
2 - Feature Fale Conosco
3 - Feature Login
4 - Feature de Recuperar Senha
5 - Feature Busca
=end

#1 2 3
When (/^[Eu ]*clicar no botao cadastro$/) do
	click_on ("Cadastro")
    visit "/cadastro"
end
#1 2
When (/^[Eu ]*preencher ([^"]*)com nome$/) do |nome|
	page.fill_in "Nome", :with => 'nome'
end
#1 2 3 4
When (/^[Eu ]*preencher ([^"]*)com email$/) do |email|
	page.fill_in "E-mail", :with => 'email'
end
#1 3
When (/^[Eu ]*preencher ([^"]*)com senha$/) do |senha|
	page.fill_in "Senha", :with => 'senha'
end
#1
When (/^[Eu ]*preencher ([^"]*)com confirme a senha$/) do |rsenha|
	page.fill_in "Confirme a senha", :with => 'rsenha'
end
#1
When (/^[Eu ]*clicar no botao criar minha conta/) do
	click_button("Criar minha conta")
end
#2
When (/^[Eu ]*clicar no botao Fale Conosco$/) do
	click_on ("Fale Conosco")
    visit "/faleconosco"
end
#2
When (/^[Eu ]*preencher ([^"]*)com Seu nome$/) do |nome|
	page.fill_in "Seu nome", :with => 'Seu nome'
end
#2
When (/^[Eu ]*preencher ([^"]*)com mensagem$/) do |mensagem|
	page.fill_in "mensagem", :with => 'mensagem'
end
#2 4
When (/^[Eu ]*clicar no botao enviar$/) do
	click_on("Enviar")
end
#3
When (/^[Eu ]*clicar no botao login$/) do
	click_on ("Login")
    visit "/entrar"
end
#3
When (/^[Eu ]*clicar no botao entrar$/) do
	click_on ("Entrar")
    visit "/entrar"
end
#4
When (/^[Eu ]*clicar no link esqueceu a senha$/) do
	click_on ("Esqueceu a senha")
	visit "/password_resets/new"
end

When (/^[Eu ]*clicar no botao busca$/) do
	click_on ("Busca")
	visit "/busca"
end
When (/^[Eu ]*preencher ([^"]*)com cidade$/) do |cidade|
	page.fill_in "Digite a cidade", :with => 'cidade'
end
#1 2 3 4
When (/^[Eu ]*preencher ([^"]*)com data$/) do |data|
	page.fill_in "Escolha a data", :with => 'data'
end
When (/^[Eu ]*clicar no botao procurar$/) do
	click_on ("Procurar")
    visit "/cidades"
end

#https://stackoverflow.com/questions/20134085/how-to-select-option-in-drop-down-using-capybara
#https://stackoverflow.com/questions/11498575/get-select-value-of-dropdown-for-capybara-testing
#<%= form.select :rate, options_for_select((1..5).step(1)), id: :comentario_rate %>
