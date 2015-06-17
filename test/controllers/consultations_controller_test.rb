require 'test_helper'

class ConsultationsControllerTest < ActionController::TestCase
  setup do
    @consultation = consultations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consultations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consultation" do
    assert_difference('Consultation.count') do
      post :create, consultation: { alumno_id: @consultation.alumno_id, assistance_id: @consultation.assistance_id, curso_id: @consultation.curso_id, grupo_id: @consultation.grupo_id, horario_id: @consultation.horario_id, institucion_id: @consultation.institucion_id, profesor_id: @consultation.profesor_id, sucursal_id: @consultation.sucursal_id, user_id: @consultation.user_id }
    end

    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should show consultation" do
    get :show, id: @consultation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consultation
    assert_response :success
  end

  test "should update consultation" do
    patch :update, id: @consultation, consultation: { alumno_id: @consultation.alumno_id, assistance_id: @consultation.assistance_id, curso_id: @consultation.curso_id, grupo_id: @consultation.grupo_id, horario_id: @consultation.horario_id, institucion_id: @consultation.institucion_id, profesor_id: @consultation.profesor_id, sucursal_id: @consultation.sucursal_id, user_id: @consultation.user_id }
    assert_redirected_to consultation_path(assigns(:consultation))
  end

  test "should destroy consultation" do
    assert_difference('Consultation.count', -1) do
      delete :destroy, id: @consultation
    end

    assert_redirected_to consultations_path
  end
end
