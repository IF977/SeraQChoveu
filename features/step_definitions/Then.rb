Then (/^cadastro completo$/) do |root_path|
    redirect_to root_path
end


Then (/^comentario enviado$/) do |comentarios|
	redirect_to "/comentarios"
end