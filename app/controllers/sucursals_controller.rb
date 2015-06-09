class SucursalsController < ApplicationController

  before_action :set_sucursal

  def index
      @sucursals = @institucion.sucursals.all
  end

  def show
  end

  def new
      @sucursal = Sucursal.new
  end

  def edit
  end

  def create
    @sucursal = Sucursal.new(sucursal_params)
    @sucursal.institucion_id = @institucion.id
    respond_to do |format|
      if @sucursal.save
        format.html { redirect_to institucion_sucursals_path(@institucion), notice: 'sucursal was successfully created.' }
        format.json { render :show, status: :created, location: @sucursal }
      else
        format.html { render :new }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @sucursal.update(sucursal_params)
        format.html { redirect_to institucion_sucursals_path(@institucion), notice: 'sucursals was successfully updated.' }
        format.json { render :show, status: :ok, location: @sucursal }
      else
        format.html { render :edit }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @sucursal.destroy
    respond_to do |format|
      format.html { redirect_to institucion_sucursals_path(@institucion) }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_sucursal
      @institucion = Institucion.find(params[:institucion_id])
      @sucursal = Sucursal.find(params[:id]) if params[:id]
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def sucursal_params
      params.require(:sucursal).permit(:cod, :sede, :direccion, :email, :institucion_id)
  end

end
