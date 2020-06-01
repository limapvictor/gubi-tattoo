class TatuagemsController < ApplicationController
  before_action :set_tatuagem, only: [:show, :edit, :update, :destroy]

  # GET /tatuagems
  # GET /tatuagems.json
  def index
    @tatuagems = Tatuagem.all
  end

  # GET /tatuagems/1
  # GET /tatuagems/1.json
  def show
  end

  # GET /tatuagems/new
  def new
    @tatuagem = Tatuagem.new
  end

  # GET /tatuagems/1/edit
  def edit
  end

  # POST /tatuagems
  # POST /tatuagems.json
  def create
    @tatuagem = Tatuagem.new(tatuagem_params)

    respond_to do |format|
      if @tatuagem.save
        format.html { redirect_to @tatuagem, notice: 'Tatuagem was successfully created.' }
        format.json { render :show, status: :created, location: @tatuagem }
      else
        format.html { render :new }
        format.json { render json: @tatuagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tatuagems/1
  # PATCH/PUT /tatuagems/1.json
  def update
    respond_to do |format|
      if @tatuagem.update(tatuagem_params)
        format.html { redirect_to @tatuagem, notice: 'Tatuagem was successfully updated.' }
        format.json { render :show, status: :ok, location: @tatuagem }
      else
        format.html { render :edit }
        format.json { render json: @tatuagem.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tatuagems/1
  # DELETE /tatuagems/1.json
  def destroy
    @tatuagem.destroy
    respond_to do |format|
      format.html { redirect_to tatuagems_url, notice: 'Tatuagem was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tatuagem
      @tatuagem = Tatuagem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tatuagem_params
      params.require(:tatuagem).permit(:Titulo, :Link, :NumeroSalvos, :, :IdTatuador)
    end
end
