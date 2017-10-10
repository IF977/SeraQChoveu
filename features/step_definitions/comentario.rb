# encoding: utf-8
#!/usr/bin/env ruby 

Dado (/^que eu clique em adicionar comentario$/) do
	visit ()
end

Quando (/^eu preencher os campos de comentario$/) do
	fill_in 'Comentario', with " "
	fill_in 'Avaliacao', with " "
end

E (/^clicar enviar$/) do
	click_button 'enviar'
end

Entao (/^comentario enviado$/) do
	
end