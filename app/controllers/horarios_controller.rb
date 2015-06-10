class HorariosController < ApplicationController
  before_action :set_horario, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @horarios = Horario.all
    
  end

  def show
  end

  def new
    @horario = Horario.new
  end

  def edit
  end

  def create
    @horario = Horario.new(horario_params)
    @horario.save

  end

  def update
    @horario.update(horario_params)
 
  end

  def destroy
    @horario.destroy
  
  end

  private
    def set_horario
      @horario = Horario.find(params[:id])
    end

    def horario_params
      params.require(:horario).permit(:fch_ini, :fch_fin, :diasSemana, :profesor_id)
    end
end
