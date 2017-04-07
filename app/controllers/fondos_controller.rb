class FondosController < ApplicationController
  before_action :set_fondo, only: [:show, :edit, :update, :destroy]

  # GET /fondos
  # GET /fondos.json
  def index
    @fondos = Fondo.all
  end

  # GET /fondos/1
  # GET /fondos/1.json
  def show
  end

  # GET /fondos/new
  def new
    @fondo = Fondo.new
  end

  # GET /fondos/1/edit
  def edit
  end

  # POST /fondos
  # POST /fondos.json
  def create
    @fondo = Fondo.new(fondo_params)

    respond_to do |format|
      if @fondo.save
        format.html { redirect_to @fondo, notice: 'Fondo was successfully created.' }
        format.json { render :show, status: :created, location: @fondo }
      else
        format.html { render :new }
        format.json { render json: @fondo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fondos/1
  # PATCH/PUT /fondos/1.json
  def update
    respond_to do |format|
      if @fondo.update(fondo_params)
        format.html { redirect_to @fondo, notice: 'Fondo was successfully updated.' }
        format.json { render :show, status: :ok, location: @fondo }
      else
        format.html { render :edit }
        format.json { render json: @fondo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fondos/1
  # DELETE /fondos/1.json
  def destroy
    @fondo.destroy
    respond_to do |format|
      format.html { redirect_to fondos_url, notice: 'Fondo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fondo
      @fondo = Fondo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fondo_params
      params.require(:fondo).permit(:nombre, :image_jpg, :image_png)
    end
end
