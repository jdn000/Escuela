class AlumnosController < ApplicationController
  before_action :set_alumno, only: [:show, :edit, :update, :destroy]	
  before_action :logged_in_user, only: [:index, :edit, :update, :destroy,:new]

  def index
    @alumnos = Alumno.all
    @user=User.find_by(params[:session])
  end

  def show
  end

	def todos
    @alumnos = Alumno.all.paginate(page: params[:page])

  end
  def new
    @alumno = Alumno.new
  end
  def edit
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


private

    def set_alumno
      @alumno = Alumno.find(params[:id])
    end
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
