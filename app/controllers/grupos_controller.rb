class GruposController < ApplicationController
  before_action :set_grupo, only: [:show, :edit, :update, :destroy]

  before_action :set_grupo
  
  def index
    @grupos = @curso.grupos.all
  end

  def show
  end

  def new
    @grupo = Grupo.new
  end

  def edit
  end

  def create
    @grupo = Grupo.new(grupo_params)
    @grupo.curso_id = @curso.id
    respond_to do |format|
      if @grupo.save
        format.html { redirect_to curso_grupos_path(@curso), notice: 'grupo satifatorimente creado' }
        format.json { render :show, status: :created, location: @grupo }
      else
        format.html { render :new }
        format.json { render json: @sucursal.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @grupo.update(grupo_params)
        format.html { redirect_to curso_grupos_path(@curso), notice: 'sucursals se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @grupo }
      else
        format.html { render :edit }
        format.json { render json: @grupo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @grupo.destroy
    respond_to do |format|
      format.html { redirect_to curso_grupos_path(@curso) }
      format.json { head :no_content }
    end
  end

  private
    def set_grupo
      @curso = Curso.find(params[:curso_id])
      @grupo = Sucursal.find(params[:id]) if params[:id]
    end

    def grupo_params
      params.require(:grupo).permit(:nombre, :cod, :fch_ini, :fch_fin, :lugar, :notas, :maximo_alumnos, :numero_alumnos, :horario, :curso_id)
    end
end
