class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]
  autocomplete :municipio, :nombre, :full => true
  
  def index
    @alumnos = Alumno.search(params[:search], params[:page])
  end

  def show
  end

  def new
    @alumno = Alumno.new
  end

  def edit
  end

  def create
    @alumno = Alumno.new(alumno_params)
    @alumno.municipio_id = params[:id_municipio]
    @alumno.save
  end

  def update
      valores = alumno_params
      valores["municipio_id"] = params[:id_municipio] # captura el valor del id dem municipio del autocomplete
      respond_to do |format|
        if @alumno.update(valores)
          format.html { redirect_to @alumno, notice: 'Alumno se ha creado correctamente.' }
          format.json { render :show, status: :ok, location: @alumno }
        else
          format.html { render :edit }
          format.json { render json: @alumno.errors, status: :unprocessable_entity }
        end
      end
  end

  def destroy
    @alumno.destroy
  end

  private
    def set_alumno
      @alumno = Alumno.find(params[:id])
    end

    def alumno_params
      params.require(:alumno).permit(:ficha, :nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :tel, :direccion, :municipio_id, :celular, :doc, :tipo_doc_id, :fch_nacimiento, :estado_civil_id, :genero, :email, :avatar)
    end
end
