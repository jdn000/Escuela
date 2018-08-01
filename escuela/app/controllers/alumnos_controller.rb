class AlumnosController < ApplicationController
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,:new]

  def index
    @alumnos = Alumno.all
    @user=User.find_by(params[:session])
  end

  def show
     @alumno= Alumno.find(params[:id])  
  end

	def todos
    @alumnos = Alumno.all

  end
  def new
    @alumno = Alumno.new
  end
  def edit
    @alumno= Alumno.find(params[:id])
  end

  def create
    @alumno = Alumno.new(alumno_params)
    if @alumno.save
    	flash[:info] = "Alumno inscrito"
      redirect_to alumnos_url
    else
       render 'new'	
    end
  end
  def update
    @alumno = Alumno.find(params[:id])
    if @alumno.update_attributes(alumno_params)
      flash[:success] = "Alumno actualizado"
      redirect_to alumnos_url   
    else
      render 'edit'
    end
  end
  def destroy
    Alumno.find(params[:id]).destroy
    flash[:success] = "Alumno eliminado"
    redirect_to alumnos_url
  end  

private

    def alumno_params
       params.require(:alumno).permit(:nombre, :ap_pat, :ap_mat, :rut, :curso)
    end
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end

end   
