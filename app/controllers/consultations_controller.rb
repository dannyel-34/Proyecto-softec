class ConsultationsController < ApplicationController
  before_action :set_consultation, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @consultations = Consultation.all
  end

  def show
  end

  def new
    @consultation = Consultation.new
  end

  def edit
  end

  def create
    @consultation = Consultation.new(consultation_params)
    @consultation.save
  end

  def update
    @consultation.update(consultation_params)
  end

  def destroy
    @consultation.destroy
  end

  private
    def set_consultation
      @consultation = Consultation.find(params[:id])
    end

    def consultation_params
      params.require(:consultation).permit(:alumno_id, :curso_id, :grupo_id, :horario_id, :institucion_id, :sucursal_id, :profesor_id, :assistance_id, :user_id)
    end
end
