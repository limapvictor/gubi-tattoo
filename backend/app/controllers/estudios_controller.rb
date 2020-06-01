class EstudiosController < ApplicationController
  before_action :set_estudio, only: [:show, :edit, :update, :destroy]

  # GET /estudios
  # GET /estudios.json
  def index
    @estudios = Estudio.all
  end

  # GET /estudios/1
  # GET /estudios/1.json
  def show
  end

  # GET /estudios/new
  def new
    @estudio = Estudio.new
  end

  # GET /estudios/1/edit
  def edit
  end

  # POST /estudios
  # POST /estudios.json
  def create
    @estudio = Estudio.new(estudio_params)

    respond_to do |format|
      if @estudio.save
        format.html { redirect_to @estudio, notice: 'Estudio was successfully created.' }
        format.json { render :show, status: :created, location: @estudio }
      else
        format.html { render :new }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estudios/1
  # PATCH/PUT /estudios/1.json
  def update
    respond_to do |format|
      if @estudio.update(estudio_params)
        format.html { redirect_to @estudio, notice: 'Estudio was successfully updated.' }
        format.json { render :show, status: :ok, location: @estudio }
      else
        format.html { render :edit }
        format.json { render json: @estudio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estudios/1
  # DELETE /estudios/1.json
  def destroy
    @estudio.destroy
    respond_to do |format|
      format.html { redirect_to estudios_url, notice: 'Estudio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estudio
      @estudio = Estudio.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def estudio_params
      params.require(:estudio).permit(:Nome, :Email, :CNPJ, :Instagram, :Facebook, :CEP, :Estado, :Cidade, :Bairro, :Rua, :Numero, :Complemento, :Senha)
    end
end
