class Asignatura < ApplicationRecord
 validates :nombre_asignatura,  presence: true, length: { maximum: 50 },uniqueness: true
 before_save :titleize
  has_many :nos
  has_many :alumnos, through: :nos

 private
     def upcase_name
      self.nombre_asignatura = nombre_asignatura.capitalize
    end
end
