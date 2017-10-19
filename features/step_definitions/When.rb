When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |nome|
	fill_in('Login', :with => 'abc')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |email|
	fill_in('E-mail', :with => 'cba@abc.com')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |senha|
	fill_in('Senha', :with => 'qwert')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |repetirsenha|
	fill_in('Repetir senha', :with => 'qwert')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |cidade|
	fill_in('Cidade', :with => 'Recife')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |datadenascimento|
	fill_in('Data de nascimento', :with => '01/01/2000') 
end

When (/^[Eu]*clicar no botao ([^"])*$/) do	
	click_button Cadastrar
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |usuário|
	fill_in('Usuario', :with => 'mmm')
end

When (/^[Eu]*preencher ([^"])*no campo ([^"])*$/) do |texto|
    fill_in('Texto', :with => 'aspoifdaspoiua spfsaupfoui asfouuasp fpasuifpoi')
end 

When (/^[Eu]*preencher ([^"])*no campo ([^""])*$/) do |rate|
	fill_in('Rate', :with => '4')
end

When (/^[Eu]*clicar no botao ([^"])*$/) do	
	click_button Enviar
end

