class Alumno < ApplicationRecord
  has_many :relationships
  has_many :asignaturas ,:through => :relationships
  include RunCl::ActAsRun
  before_save :downcase_nombre,:downcase_ap_pat, :downcase_ap_mat, :downcase_rut 
  validates :nombre,  presence: true, length: { maximum: 50 }      
  validates :ap_pat,  presence: true, length: { maximum: 50 } 
  validates :ap_mat,  presence: true, length: { maximum: 50 } 
  validates :rut,  presence: true, length: { maximum: 10 },uniqueness: { case_sensitive: false }
  has_run_cl :rut,  run: false, uniq_run: false # skip both validations



private

# Convierte los nombres y apellidos a minusculas
    def downcase_nombre
      self.nombre = nombre.downcase
    end  

    def downcase_ap_pat
      self.ap_pat = ap_pat.downcase
    end

    def downcase_ap_mat
      self.ap_mat = ap_mat.downcase
    end

    def downcase_rut
      self.rut = rut.downcase
    end        
end
