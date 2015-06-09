class CursosController < ApplicationController
  before_action :set_curso, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @cursos = Curso.all
    respond_with(@cursos)
  end

  def show
  end

  def new
    @curso = Curso.new
  end

  def edit
  end

  def create
    @curso = Curso.new(curso_params)
    @curso.save
  end

  def update
    @curso.update(curso_params)
  end

  def destroy
    @curso.destroy
  end

  private
    def set_curso
      @curso = Curso.find(params[:id])
    end

    def curso_params
      params.require(:curso).permit(:nombre, :descripcion, :fch_ini, :fch_fin)
    end
end
