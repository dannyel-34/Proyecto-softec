class ProfesorsController < ApplicationController
  before_action :set_profesor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @profesors = Profesor.all
  end

  def show
  end

  def new
    @profesor = Profesor.new
  end

  def edit
  end

  def create
    @profesor = Profesor.new(profesor_params)
    @profesor.save
  end

  def update
    @profesor.update(profesor_params)
  end

  def destroy
    @profesor.destroy
  end

  private
    def set_profesor
      @profesor = Profesor.find(params[:id])
    end

    def profesor_params
      params.require(:profesor).permit(:nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :direccion, :telefono, :doc_identidad, :tipo_doc_id, :estado_civils_id, fch_nacimiento)
    end
end
