Given (/^Estou na pagina inicial$/) do
	visit root_path
end

When (/^[Eu ]*clicar no botao comentarios$/) do
	click_button ("Comentários")
    visit "/comentarios/new"
end

When (/^[Eu ]*preencher ([^"]*)com usuario/) do |usuario|
	page.fill_in "Usuario", :with => usuario
end

When (/^[Eu ]*preencher ([^"]*)com comentario$/) do |texto|
	page.fill_in "Texto", :with => 'texto'
end
When (/^[Eu ]*preencher ([^"]*)com avaliacao$/) do |rate|
	page.fill_in "Rate", :with => 'rate'
end

When (/^[Eu ]*clicar no botao enviar$/) do	
	click_button("Enviar")
end

Then (/^comentario enviado$/) do
    visit "/comentarios"
end