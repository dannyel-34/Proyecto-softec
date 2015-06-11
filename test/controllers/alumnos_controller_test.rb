require 'test_helper'

class AlumnosControllerTest < ActionController::TestCase
  setup do
    @alumno = alumnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumno" do
    assert_difference('Alumno.count') do
      post :create, alumno: { celular: @alumno.celular, direccion: @alumno.direccion, doc: @alumno.doc, estado_civil_id: @alumno.estado_civil_id, fch_nacimiento: @alumno.fch_nacimiento, ficha: @alumno.ficha, municipio_id: @alumno.municipio_id, nombre: @alumno.nombre, nombre_completo: @alumno.nombre_completo, primer_apellido: @alumno.primer_apellido, segundo_apellido: @alumno.segundo_apellido, tel: @alumno.tel, tipo_doc_id: @alumno.tipo_doc_id }
    end

    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should show alumno" do
    get :show, id: @alumno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumno
    assert_response :success
  end

  test "should update alumno" do
    patch :update, id: @alumno, alumno: { celular: @alumno.celular, direccion: @alumno.direccion, doc: @alumno.doc, estado_civil_id: @alumno.estado_civil_id, fch_nacimiento: @alumno.fch_nacimiento, ficha: @alumno.ficha, municipio_id: @alumno.municipio_id, nombre: @alumno.nombre, nombre_completo: @alumno.nombre_completo, primer_apellido: @alumno.primer_apellido, segundo_apellido: @alumno.segundo_apellido, tel: @alumno.tel, tipo_doc_id: @alumno.tipo_doc_id }
    assert_redirected_to alumno_path(assigns(:alumno))
  end

  test "should destroy alumno" do
    assert_difference('Alumno.count', -1) do
      delete :destroy, id: @alumno
    end

    assert_redirected_to alumnos_path
  end
end
