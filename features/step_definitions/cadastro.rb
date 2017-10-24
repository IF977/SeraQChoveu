Given (/^[Eu ]*estou na pagina inicial$/) do
	visit root_path
end

When (/^[Eu ]*clicar no botao cadastro$/) do
	click_button ("Cadastro")
    visit "/users/new"
end

When (/^[Eu ]*preencher ([^"]*)com login$/) do |nome|
	page.fill_in "Nome", :with => 'nome'
end

When (/^[Eu ]*preencher ([^"]*)com email$/) do |email|
	page.fill_in "E-mail", :with => 'email'
end
When (/^[Eu ]*preencher ([^"]*)com senha$/) do |senha|
	page.fill_in "Senha", :with => 'senha'
end

When (/^[Eu ]*preencher ([^"]*)com repetir senha$/) do |rsenha|
	page.fill_in "Confirme a senha", :with => 'rsenha'
end

When (/^[Eu ]*clicar no botao salvar/) do	
	click_button("Salvar")
end

Then (/^cadastro completo$/) do
    visit root_path
end



