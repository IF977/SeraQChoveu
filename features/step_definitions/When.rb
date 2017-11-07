When (/^[Eu ]*clicar no botao cadastro$/) do
	click_on ("Cadastro")
    visit "/cadastro"
end

When (/^[Eu ]*preencher ([^"]*)com nome$/) do |nome|
	page.fill_in "Nome", :with => 'nome'
end

When (/^[Eu ]*preencher ([^"]*)com email$/) do |email|
	page.fill_in "E-mail", :with => 'email'
end

When (/^[Eu ]*preencher ([^"]*)com senha$/) do |senha|
	page.fill_in "Senha", :with => 'senha'
end

When (/^[Eu ]*preencher ([^"]*)com confirme a senha$/) do |rsenha|
	page.fill_in "Confirme a senha", :with => 'rsenha'
end

When (/^[Eu ]*clicar no botao criar minha conta/) do	
	click_button("Criar minha conta")
end

When (/^[Eu ]*clicar no botao comentarios$/) do
	click_on ("Comentários")
    visit "/comentarios/new"
end

When (/^[Eu ]*preencher ([^"]*)com mensagem$/) do |mensagem|
	page.fill_in "Mensagem", :with => 'mensagem'
end

When (/^[Eu ]*preencher ([^"]*)com avaliacao$/) do |rate|
	page.fill_in "Rate", :with => 'rate'
	#find('Rate').find(:xpath, 'rate').select_option
	#find_field("Rate").find("rate").value
	#expect(page).to have_select("Rate", selected: 'rate')#, :with => 'rate'
end

When (/^[Eu ]*clicar no botao enviar$/) do	
	click_on("Enviar")
end

When (/^[Eu ]*clicar no botao contato$/) do
	click_on ("Contato")
    visit "/contatos"
end

When (/^[Eu ]*clicar no botao login$/) do
	click_on ("Login")
    visit "/entrar"
end

When (/^[Eu ]*clicar no botao entrar$/) do
	click_on ("Entrar")
    visit "/entrar"
end


#https://stackoverflow.com/questions/20134085/how-to-select-option-in-drop-down-using-capybara
#https://stackoverflow.com/questions/11498575/get-select-value-of-dropdown-for-capybara-testing
#<%= form.select :rate, options_for_select((1..5).step(1)), id: :comentario_rate %>