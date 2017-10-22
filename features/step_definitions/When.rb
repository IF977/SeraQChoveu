When (/^[Eu]*clicar no botao "Cadastro"$/) do	
	click_button Cadastrao
	redirect_to "/users/new"
end
	
When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |nome, email, senha, repetir, cidade, data|
	fill_in('Login', :with => '')
	fill_in('E-mail', :with => '')
	fill_in('Senha', :with => '')
	fill_in('Repetir senha', :with => '')
	fill_in('Cidade', :with => '')
	fill_in('Data de nascimento', :with => '') 
end

When (/^[Eu]*clicar no botao "create user"$/) do	
	click_button Create User
	redirect_to root_path
end

When (/^[Eu]*clicar no botao "Comentários"$/) do	
	click_button Comentarios
redirect_to "/comentarios/new"
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do | usuário, texto, rate |
	fill_in('Usuario', :with => '')
    fill_in('Texto', :with => '')
	fill_in('Rate', :with => '')
end

When (/^[Eu]*clicar no botao "Enviar"$/) do	
	click_button (Enviar)
	redirect_to "/comentarios"
end