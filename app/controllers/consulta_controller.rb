class ConsultaController < ApplicationController
  before_action :set_consultum, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @consulta = Consultum.all
    respond_with(@consulta)
  end

  def show
    respond_with(@consultum)
  end

  def new
    @consultum = Consultum.new
    respond_with(@consultum)
  end

  def edit
  end

  def create
    @consultum = Consultum.new(consultum_params)
    @consultum.save
    respond_with(@consultum)
  end

  def update
    @consultum.update(consultum_params)
    respond_with(@consultum)
  end

  def destroy
    @consultum.destroy
    respond_with(@consultum)
  end

  private
    def set_consultum
      @consultum = Consultum.find(params[:id])
    end

    def consultum_params
      params.require(:consultum).permit(:alumno_id, :curso_id, :grupo_id, :horario_id, :institucion_id, :sucursal_id, :profesor_id, :assistance_id)
    end
end
