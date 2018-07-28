class AsignaturasController < ApplicationController

  def index
    @asignaturas = Asignatura.all
  end

  # GET /alumnos/1
  # GET /alumnos/1.json
  def show
  end

  # GET /alumnos/new
  def new
    @asignatura = Asignatura.new
  end

  # GET /alumnos/1/edit
  def edit
  	@asignatura=Asignatura.find(params[:id])
  end

  # POST /alumnos
  # POST /alumnos.json
  def create
    @asignatura = Asignatura.new(asignatura_params) 
    if @asignatura.save
    	flash[:info] = "Asignatura inscrita"
      redirect_to asignaturas_url
    else
          render 'new'	
    end       	
   end
  def update
    @asignatura = Asignatura.find(params[:id])
    if @asignatura.update_attributes(asignatura_params)
      # Handle a successful update.
      flash[:success] = "Nombre actualizado"
      redirect_to asignaturas_url  
    else
      render 'edit'
    end
  end

  # DELETE /alumnos/1
  # DELETE /alumnos/1.json
  def editar
  	@asignaturas=Asignatura.all
  end
  def destroy
  		@asignatura=Asignatura.find(params[:id])
  	    @asignatura.destroy  
     	flash[:info] = "Asignatura eliminada" 
        redirect_to asignaturas_url    		    
    end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asignatura
      @asignatura = Asignatura.find(params[:nombre_asignatura])
    end

    def asignatura_params
       params.require(:asignatura).permit(:nombre_asignatura)
    end
end


