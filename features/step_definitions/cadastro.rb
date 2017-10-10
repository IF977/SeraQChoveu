# encoding: utf-8
#!/usr/bin/env ruby 

Dado (/^que eu clique em cadastro$/) do
	visit ""
end

Quando (/^eu preencher os campos de cadastro$/) do
	fill_in 'Login *', :with => ""
	fill_in 'E-mail *', :with => ""
	fill_in 'Senha *', :with => ""
	fill_in 'Repetir senha *', :with => ""
	fill_in 'Cidade', :with => ""
	fill_in 'Data de nascimento', :with => ""
end

E (/^clicar cadastrar$/) do
	click_button 'cadastrar'
end

Entao (/^cadastro completo$/) do
	
end