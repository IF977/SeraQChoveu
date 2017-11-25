class CidadesController < ApplicationController

    def index
        if params[:cidade]
            @cidades = Cidade.search(params[:cidade]).order("created_at DESC")
        else
            @cidades = Cidade.all.order("created_at DESC")
        end
    end

    def new
        @cidades = Cidade.new
    end

    def create
        @cidade = Cidade.new(cidade_params)
    end

    private

    def cidade_params
        params.require(:cidade).permit(:nome, :dia, :precipitacao, :ocorrencias)
    end

end
