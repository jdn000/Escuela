class NosController < ApplicationController
  respond_to :docx
  respond_to :pdf
  before_action :logged_in_user


  def index
  end

  def informes_index
   @alumnos=Alumno.all
  end
  def download3
   @alumnos=Alumno.all   
   respond_to do |format|
      format.docx do
     render  docx: 'download3', filename: 'Informes_sexto_basico.docx'

      end     
    end
  end  

 def download2
   @alumno=Alumno.find(params[:id])    
   @nos=No.where(" rut_al = ?  ",@alumno.rut)     
   @lenguaje=No.where("nom_asig = 'Lenguaje y comunicacion' AND rut_al = ? ",@alumno.rut)  
   @ingles=No.where("nom_asig = 'Inglés' AND rut_al = ? ",@alumno.rut) 
   @matematica=No.where("nom_asig = 'Matemática' AND rut_al = ? ",@alumno.rut)   
   @historia=No.where("nom_asig = 'Historia y geografía y ciencias sociales' AND rut_al = ? ",@alumno.rut)   
   @ciencias=No.where("nom_asig = 'Ciencias naturales' AND rut_al = ? ",@alumno.rut)   
   @artes=No.where("nom_asig = 'Artes visuales' AND rut_al = ? ",@alumno.rut)   
   @musica=No.where("nom_asig = 'Música' AND rut_al = ? ",@alumno.rut)   
   @edfisica=No.where("nom_asig = 'Educación física y salud' AND rut_al = ? ",@alumno.rut)   
   @tecnologia=No.where("nom_asig = 'Tecnología' AND rut_al = ? ",@alumno.rut)  
   @religion=No.where("nom_asig = 'Religión' AND rut_al = ? ",@alumno.rut)     
   @total=(@lenguaje.first.N16+@ingles.first.N16+@matematica.first.N16+@historia.first.N16+@ciencias.first.N16+@edfisica.first.N16+@tecnologia.first.N16+@musica.first.N16+@artes.first.N16)/9          
     
    respond_to do |format|
      format.pdf do
      render pdf: 'download2', filename: '@alumno.ap_pat'
      end     
    end  
  end
  def download
   @alumno=Alumno.find(params[:id])    
   @nos=No.where(" rut_al = ?  ",@alumno.rut)     
   @lenguaje=No.where("nom_asig = 'Lenguaje y comunicacion' AND rut_al = ? ",@alumno.rut)  
   @ingles=No.where("nom_asig = 'Inglés' AND rut_al = ? ",@alumno.rut) 
   @matematica=No.where("nom_asig = 'Matemática' AND rut_al = ? ",@alumno.rut)   
   @historia=No.where("nom_asig = 'Historia y geografía y ciencias sociales' AND rut_al = ? ",@alumno.rut)   
   @ciencias=No.where("nom_asig = 'Ciencias naturales' AND rut_al = ? ",@alumno.rut)   
   @artes=No.where("nom_asig = 'Artes visuales' AND rut_al = ? ",@alumno.rut)   
   @musica=No.where("nom_asig = 'Música' AND rut_al = ? ",@alumno.rut)   
   @edfisica=No.where("nom_asig = 'Educación física y salud' AND rut_al = ? ",@alumno.rut)   
   @tecnologia=No.where("nom_asig = 'Tecnología' AND rut_al = ? ",@alumno.rut)  
   @religion=No.where("nom_asig = 'Religión' AND rut_al = ? ",@alumno.rut)     
   @total=(@lenguaje.first.N16+@ingles.first.N16+@matematica.first.N16+@historia.first.N16+@ciencias.first.N16+@edfisica.first.N16+@tecnologia.first.N16+@musica.first.N16+@artes.first.N16)/9          
    respond_to do |format|
      format.docx do
     render  docx: 'download', filename: @alumno.ap_pat.capitalize+'_'+@alumno.ap_mat.capitalize+'.docx'

      end     
    end
  end
  def informes_detalle
   @alumno=Alumno.find(params[:id])    
   @nos=No.where(" rut_al = ?  ",@alumno.rut)     
   @lenguaje=No.where("nom_asig = 'Lenguaje y comunicacion' AND rut_al = ? ",@alumno.rut)  
   @ingles=No.where("nom_asig = 'Inglés' AND rut_al = ? ",@alumno.rut) 
   @matematica=No.where("nom_asig = 'Matemática' AND rut_al = ? ",@alumno.rut)   
   @historia=No.where("nom_asig = 'Historia y geografía y ciencias sociales' AND rut_al = ? ",@alumno.rut)   
   @ciencias=No.where("nom_asig = 'Ciencias naturales' AND rut_al = ? ",@alumno.rut)   
   @artes=No.where("nom_asig = 'Artes visuales' AND rut_al = ? ",@alumno.rut)   
   @musica=No.where("nom_asig = 'Música' AND rut_al = ? ",@alumno.rut)   
   @edfisica=No.where("nom_asig = 'Educación física y salud' AND rut_al = ? ",@alumno.rut)   
   @tecnologia=No.where("nom_asig = 'Tecnología' AND rut_al = ? ",@alumno.rut)
   @religion=No.where("nom_asig = 'Religión' AND rut_al = ? ",@alumno.rut)  
   @total=(@lenguaje.first.N16+@ingles.first.N16+@matematica.first.N16+@historia.first.N16+@ciencias.first.N16+@edfisica.first.N16+@tecnologia.first.N16+@musica.first.N16+@artes.first.N16)/9        
  end


  def new
  end

  def new2
    @alumnos=Alumno.where(" curso = '6'")
    @asignatura =Asignatura.find_by( nombre_asignatura: params[:asig])
  end  



  def create
    @no = No.new(no_params)
    if @no.save
      flash[:info] = "Plantilla notas creada"
     redirect_to nos_url      
    else
       render 'new' 
    end    
  end

  
  def edit
  end



  def update
  end


  def destroy
    @no.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nota
      @no = No.find(params[:id])
    end

    def no_params
       params.require(:no).permit(:rut_al,:nom_asig,:periodo,:N1,:N2,:N3,:N4,:N5,:N6,:N7,:N8,:N9,:N10,:N11,:N12,:N13,:N14,:N15,:N16)
    end
end
