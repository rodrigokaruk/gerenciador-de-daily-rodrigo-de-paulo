class PessoasController < ApplicationController
	Pessoa.connection

	def index
		@pessoas = Pessoa.all
	end

	def new
		@pessoa = Pessoa.new
	end

	def show
		@pessoa = Pessoa.find(pessoa_id)
	end

	def create
		@pessoa = Pessoa.create(pessoa_params)

		if @pessoa.save
			flash[:notice] = "Cadastrado com sucesso."
			redirect_to pessoas_path
		else
			flash[:error] = "Problema ao cadastrar"
			render :new
		end
	end

	def destroy
		pessoa = Pessoa.find(params[:id])

		if pessoa.destroy
			flash[:notice] = "Removido com sucesso"
			redirect_to pessoas_path
		else
			flash[:error] = "Erro ao remover pessoa!"
			redirect_to pessoas_path
		end
	end

	def pessoa_params
		params.require(:pessoa).permit(:nome, :nascimento)
	end
end