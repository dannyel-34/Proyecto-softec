class AcudientesController < ApplicationController
  before_action :set_acudiente, only: [:show, :edit, :update, :destroy]
  autocomplete :municipio, :nombre, :full => true
 

  def index
    @acudientes = Acudiente.all
  end

  def show
  end

  def new
    @acudiente = Acudiente.new
  end

  def edit
  end

  def create
    @acudiente = Acudiente.new(acudiente_params)
    @acudiente.save
    AcudienteMailer.welcome_email(u).deliver
  end
  
  def update
      valores = acudiente_params
      valores["municipio_id"] = params[:id_municipio] # captura el valor del id dem municipio del autocomplete
      respond_to do |format|
        if @acudiente.update(valores)
          format.html { redirect_to @acudiente, notice: 'Acudiente was successfully updated.' }
          format.json { render :show, status: :ok, location: @acudiente }
        else
          format.html { render :edit }
          format.json { render json: @acudiente.errors, status: :unprocessable_entity }
        end
      end
  end

 
  def destroy
    @acudiente.destroy
  end

  private
    def set_acudiente
      @acudiente = Acudiente.find(params[:id])
    end

    def acudiente_params
      params.require(:acudiente).permit(:nombre, :primer_apellido, :segundo_apellido, :nombre_completo, :mail, :telefono, :documento, :tipo_doc_id, :estado_civil_id, :fch, :direccion, :municipio_id)
    end
end
