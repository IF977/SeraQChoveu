class PagesController < ApplicationController
  def index
    flash[:notice] = "Mensagem enviada com sucesso!!"
  end
end
