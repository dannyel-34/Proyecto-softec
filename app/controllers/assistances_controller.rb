class AssistancesController < ApplicationController
  before_action :set_assistance, only: [:show, :edit, :update, :destroy]

  respond_to :html
  
  def index
    @assistances = Assistance.all
  end

  def show
  end

  def new
    @assistance = Assistance.new
  end

  def edit
  end

  def create
    @assistance = Assistance.new(assistance_params)
    @assistance.save
  end

  def update
    @assistance.update(assistance_params)
  end

  def destroy
    @assistance.destroy
  end

  def edit_multiple
    @assistances = Assistance.find(params[:assistance_ids])
  end

  def update_multiple
    @assistances = Assistance.find(params[:assistance_ids])
      @assistances.each do |assistance|
          params.permit!
          poll.update_attributes!(params[:assistance])
      end
      flash[:notice] = "Actualizacion correcta"
      redirect_to assistances_path
  end
         
  private
  
    def set_assistance
      @assistance = Assistance.find(params[:id])
    end

    def assistance_params
      params.require(:assistance).permit(:alumno_id, :profesor_id, :curso_id, :grupo_id, :horario_id, :fch)
    end
end
