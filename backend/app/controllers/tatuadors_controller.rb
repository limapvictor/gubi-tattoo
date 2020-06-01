class TatuadorsController < ApplicationController
  before_action :set_tatuador, only: [:show, :edit, :update, :destroy]

  # GET /tatuadors
  # GET /tatuadors.json
  def index
    @tatuadors = Tatuador.all
  end

  # GET /tatuadors/1
  # GET /tatuadors/1.json
  def show
  end

  # GET /tatuadors/new
  def new
    @tatuador = Tatuador.new
  end

  # GET /tatuadors/1/edit
  def edit
  end

  # POST /tatuadors
  # POST /tatuadors.json
  def create
    @tatuador = Tatuador.new(tatuador_params)

    respond_to do |format|
      if @tatuador.save
        format.html { redirect_to @tatuador, notice: 'Tatuador was successfully created.' }
        format.json { render :show, status: :created, location: @tatuador }
      else
        format.html { render :new }
        format.json { render json: @tatuador.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tatuadors/1
  # PATCH/PUT /tatuadors/1.json
  def update
    respond_to do |format|
      if @tatuador.update(tatuador_params)
        format.html { redirect_to @tatuador, notice: 'Tatuador was successfully updated.' }
        format.json { render :show, status: :ok, location: @tatuador }
      else
        format.html { render :edit }
        format.json { render json: @tatuador.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tatuadors/1
  # DELETE /tatuadors/1.json
  def destroy
    @tatuador.destroy
    respond_to do |format|
      format.html { redirect_to tatuadors_url, notice: 'Tatuador was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tatuador
      @tatuador = Tatuador.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tatuador_params
      params.require(:tatuador).permit(:Nome, :Email, :CPF, :NumeroDeSeguidores, :Instagram, :Celular, :Senha, :Sobre, :Foto.string)
    end
end
