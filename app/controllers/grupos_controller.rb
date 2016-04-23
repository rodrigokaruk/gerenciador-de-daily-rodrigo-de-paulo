class GruposController < ApplicationController
	def index
		
	end

	def new
	end

	def show
	end

	def create

		if true
			flash[:notice] = "Cadastrado com sucesso."
			redirect_to pessoas_path
		else
			flash[:error] = "Problema ao cadastrar"
			render :new
		end
	end

	def grupos_params
		params.require(:grupo).permit(:lider, :pessoas)
	end
end