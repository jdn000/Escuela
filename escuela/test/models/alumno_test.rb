require 'test_helper'

class AlumnoTest < ActiveSupport::TestCase

  def setup
    @alumno = Alumno.new( rut: "16744993-k",  nombre:"julio", ap_pat:"diaz", ap_mat:"navarrete")
  end
  test "debe ser valido" do
    assert @alumno.valid?
  end

  test "el nombre no debe ser vacio" do
    @alumno.nombre = "     "
    assert_not @alumno.valid?
  end
  test "el apellido paterno no debe ser vacio" do
    @alumno.ap_pat = "     "
    assert_not @alumno.valid?
  end
  test "el apellido materno no debe ser vacio" do
    @alumno.ap_mat = "     "
    assert_not @alumno.valid?
  end
  test "el rut no debe ser vacio" do
    @alumno.rut = "     "
    assert_not @alumno.valid?
  end
    test "el nombre no debe ser largo" do
    @alumno.nombre = "a" * 51
    assert_not @alumno.valid?
  end
  test "el apellido paterno no debe ser largo" do
    @alumno.ap_pat = "a" * 51
    assert_not @alumno.valid?
  end
  test "el apellido materno no debe ser largo" do
    @alumno.ap_mat = "a" * 51
    assert_not @alumno.valid?
  end
  test "el rut no debe serlargo" do
    @alumno.rut = "1" * 11
    assert_not @alumno.valid?
  end
  test "rut unico" do
  duplicate_alumno = @alumno.dup
  duplicate_alumno.rut = @alumno.rut.upcase
  @alumno.save
  assert_not duplicate_alumno.valid?
  end
  test "rut valido" do
    @alumno.rut = "16744993-1"
    assert_not Run.valid? @alumno.rut
  end  

end