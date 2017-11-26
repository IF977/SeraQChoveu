class CidadesController < ApplicationController
    require 'date'

    def index
        if params[:cidade].present?
            if data_valida?(params[:data])
                @cidades = Cidade.search(params[:cidade]).order("created_at ASC")
            else
                flash.now[:danger] = "Data inválida, digite no formato dd/mm"
            end
        else
            flash.now[:danger] = "Cidade inválida, verifique no mapa as cidades disponíveis"
        end
    end

    def new
        @cidades = Cidade.new
    end

    def create
        @cidade = Cidade.new(cidade_params)
    end

    private

    def data_valida?(data, format = "%d/%m")
        Date.strptime(data,format) rescue false
    end

    def cidade_params
        params.require(:cidade).permit(:nome, :dia, :precipitacao, :ocorrencias, :fracas, :moderadas, :fortes)
    end

end
