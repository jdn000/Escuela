class Asignatura < ApplicationRecord
	  has_many :relationships
	  has_many :alumnos ,:through => :relationships

end
