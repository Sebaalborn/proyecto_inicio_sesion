class NombreModelosController < ApplicationController
  before_action :set_nombre_modelo, only: [:show, :edit, :update, :destroy]

  # GET /nombre_modelos
  # GET /nombre_modelos.json
  def index
    @nombre_modelos = NombreModelo.all
  end

  # GET /nombre_modelos/1
  # GET /nombre_modelos/1.json
  def show
  end

  # GET /nombre_modelos/new
  def new
    @nombre_modelo = NombreModelo.new
  end

  # GET /nombre_modelos/1/edit
  def edit
  end

  # POST /nombre_modelos
  # POST /nombre_modelos.json
  def create
    @nombre_modelo = NombreModelo.new(nombre_modelo_params)

    respond_to do |format|
      if @nombre_modelo.save
        format.html { redirect_to @nombre_modelo, notice: 'Nombre modelo was successfully created.' }
        format.json { render :show, status: :created, location: @nombre_modelo }
      else
        format.html { render :new }
        format.json { render json: @nombre_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nombre_modelos/1
  # PATCH/PUT /nombre_modelos/1.json
  def update
    respond_to do |format|
      if @nombre_modelo.update(nombre_modelo_params)
        format.html { redirect_to @nombre_modelo, notice: 'Nombre modelo was successfully updated.' }
        format.json { render :show, status: :ok, location: @nombre_modelo }
      else
        format.html { render :edit }
        format.json { render json: @nombre_modelo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nombre_modelos/1
  # DELETE /nombre_modelos/1.json
  def destroy
    @nombre_modelo.destroy
    respond_to do |format|
      format.html { redirect_to nombre_modelos_url, notice: 'Nombre modelo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nombre_modelo
      @nombre_modelo = NombreModelo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nombre_modelo_params
      params.require(:nombre_modelo).permit(:campo1, :campo2)
    end
end
