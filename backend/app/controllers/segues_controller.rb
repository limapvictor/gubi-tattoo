class SeguesController < ApplicationController
  before_action :set_segue, only: [:show, :edit, :update, :destroy]

  # GET /segues
  # GET /segues.json
  def index
    @segues = Segue.all
  end

  # GET /segues/1
  # GET /segues/1.json
  def show
  end

  # GET /segues/new
  def new
    @segue = Segue.new
  end

  # GET /segues/1/edit
  def edit
  end

  # POST /segues
  # POST /segues.json
  def create
    @segue = Segue.new(segue_params)

    respond_to do |format|
      if @segue.save
        format.html { redirect_to @segue, notice: 'Segue was successfully created.' }
        format.json { render :show, status: :created, location: @segue }
      else
        format.html { render :new }
        format.json { render json: @segue.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /segues/1
  # PATCH/PUT /segues/1.json
  def update
    respond_to do |format|
      if @segue.update(segue_params)
        format.html { redirect_to @segue, notice: 'Segue was successfully updated.' }
        format.json { render :show, status: :ok, location: @segue }
      else
        format.html { render :edit }
        format.json { render json: @segue.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /segues/1
  # DELETE /segues/1.json
  def destroy
    @segue.destroy
    respond_to do |format|
      format.html { redirect_to segues_url, notice: 'Segue was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_segue
      @segue = Segue.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def segue_params
      params.require(:segue).permit(:usuario_id, :caracteristica_id)
    end
end
