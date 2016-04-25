class FormulatiosController < ApplicationController
  before_action :set_formulatio, only: [:show, :edit, :update, :destroy]

  # GET /formulatios
  # GET /formulatios.json
  def index
    @formulatios = Formulatio.all
  end

  # GET /formulatios/1
  # GET /formulatios/1.json
  def show
  end

  # GET /formulatios/new
  def new
    @formulatio = Formulatio.new
  end

  # GET /formulatios/1/edit
  def edit
  end

  # POST /formulatios
  # POST /formulatios.json
  def create
    @formulatio = Formulatio.new(formulatio_params)

    respond_to do |format|
      if @formulatio.save
        format.html { redirect_to @formulatio, notice: 'Formulatio was successfully created.' }
        format.json { render :show, status: :created, location: @formulatio }
      else
        format.html { render :new }
        format.json { render json: @formulatio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /formulatios/1
  # PATCH/PUT /formulatios/1.json
  def update
    respond_to do |format|
      if @formulatio.update(formulatio_params)
        format.html { redirect_to @formulatio, notice: 'Formulatio was successfully updated.' }
        format.json { render :show, status: :ok, location: @formulatio }
      else
        format.html { render :edit }
        format.json { render json: @formulatio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /formulatios/1
  # DELETE /formulatios/1.json
  def destroy
    @formulatio.destroy
    respond_to do |format|
      format.html { redirect_to formulatios_url, notice: 'Formulatio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formulatio
      @formulatio = Formulatio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def formulatio_params
      params.require(:formulatio).permit(:pessoa_id, :tipo, :conteudo)
    end
end
