=begin
Legendas
1 - Feature Cadastro
2 - Feature Fale Conosco
3 - Feature Login
4 - Feature de Recuperar Senha
5 - Feature Busca
=end

#1 2 3

#1
Then (/^cadastro completo$/) do
    visit root_path
end
#2
Then (/^mensagem enviada$/) do
    visit root_path
end
#3
Then (/^login realizado$/) do
    "/users"
end
#4
Then (/^nova senha enviada$/) do
    "/users"
end
Then (/^busca realizada$/) do
    "/cidades"
end