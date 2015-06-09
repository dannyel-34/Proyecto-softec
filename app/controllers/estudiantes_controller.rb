class EstudiantesController < ApplicationController
  before_action :set_estudiante, only: [:show, :edit, :update, :destroy]
  autocomplete :municipio, :nombre, :full => true
  respond_to :html

  def index
    @estudiantes = Estudiante.all
    
     respond_to do |format|
        format.html 
        format.xls 
     end
  end

  def show
  end

  def new
    @estudiante = Estudiante.new
  end

  def edit
  end

  def create
    @nombre.estudiante_id = params[:id_estudiante]
    autocomplete :municipio, :nombre, :full => true
    respond_to do |format|
      if @estudiante.save
        format.html { redirect_to @estudiante, notice: 'Comentario se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @estudiante }
      else
        format.html { render :new }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    valores = estudiante_params
    valores["estudiante_id"] = params[:id_estudiante] # captura el valor del id dem municipio del autocomplete
    respond_to do |format|
      if @estudiante.update(valores)
        format.html { redirect_to @estudiante, notice: 'Tipo beneficio satisfactoriamente Actualizado.' }
        format.json { render :show, status: :ok, location: @tipo_beneficio }
      else
        format.html { render :edit }
        format.json { render json: @estudiante.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @estudiante.destroy
  end

  private
    def set_estudiante
      @estudiante = Estudiante.find(params[:id])
    end

    def estudiante_params
      params.require(:estudiante).permit(:pr_nombre, :sr_nombre, :pr_apellido, :sr_apellido, :mail, :tipo_doc_id, :num_doc, :municipio_id, :genero, :fch_nacimiento, :direccion, :telefono)
    end
end
