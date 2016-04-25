class PessoasController < ApplicationController
	Pessoa.connection
	before_action :set_pessoa, only: [:show, :edit, :update, :destroy]

	def index
		@pessoas = Pessoa.all
	end

	def new
		@pessoa = Pessoa.new
	end

	def show
		@pessoa = Pessoa.find(pessoa_id)
	end

	def edit
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

	def update
		respond_to do |format|
			if @pessoa.update(pessoa_params)
				format.html { redirect_to pessoas_path, notice: 'Pessoa atualizada.' }
				format.json { render :index, status: :ok, location: pessoas_path }
			else
				format.html { render :edit }
				format.json { render json: @pessoa.errors, status: :unprocessable_entity }
			end
		end
	end

   private
	def set_pessoa
      @pessoa = Pessoa.find(params[:id])
    end

	def pessoa_params
		params.require(:pessoa).permit(:nome, :nascimento)
	end
end