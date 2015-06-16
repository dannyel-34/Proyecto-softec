require 'test_helper'

class ConsultaControllerTest < ActionController::TestCase
  setup do
    @consultum = consulta(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consulta)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultum" do
    assert_difference('Consultum.count') do
      post :create, consultum: { alumno_id: @consultum.alumno_id, assistance_id: @consultum.assistance_id, curso_id: @consultum.curso_id, grupo_id: @consultum.grupo_id, horario_id: @consultum.horario_id, institucion_id: @consultum.institucion_id, profesor_id: @consultum.profesor_id, sucursal_id: @consultum.sucursal_id }
    end

    assert_redirected_to consultum_path(assigns(:consultum))
  end

  test "should show consultum" do
    get :show, id: @consultum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultum
    assert_response :success
  end

  test "should update consultum" do
    patch :update, id: @consultum, consultum: { alumno_id: @consultum.alumno_id, assistance_id: @consultum.assistance_id, curso_id: @consultum.curso_id, grupo_id: @consultum.grupo_id, horario_id: @consultum.horario_id, institucion_id: @consultum.institucion_id, profesor_id: @consultum.profesor_id, sucursal_id: @consultum.sucursal_id }
    assert_redirected_to consultum_path(assigns(:consultum))
  end

  test "should destroy consultum" do
    assert_difference('Consultum.count', -1) do
      delete :destroy, id: @consultum
    end

    assert_redirected_to consulta_path
  end
end
