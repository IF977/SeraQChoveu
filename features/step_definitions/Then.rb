Then (/^cadastro completo$/) do
    visit root_path
end

Then (/^comentario enviado$/) do
    visit "/comentarios"
end

Then (/^mensagem enviada$/) do
    visit root_path
end