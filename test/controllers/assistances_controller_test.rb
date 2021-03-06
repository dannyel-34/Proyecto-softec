require 'test_helper'

class AssistancesControllerTest < ActionController::TestCase
  setup do
    @assistance = assistances(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assistances)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assistance" do
    assert_difference('Assistance.count') do
      post :create, assistance: { alumno_id: @assistance.alumno_id, curso_id: @assistance.curso_id, fch: @assistance.fch, grupo_id: @assistance.grupo_id, horario_id: @assistance.horario_id, profesor_id: @assistance.profesor_id }
    end

    assert_redirected_to assistance_path(assigns(:assistance))
  end

  test "should show assistance" do
    get :show, id: @assistance
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assistance
    assert_response :success
  end

  test "should update assistance" do
    patch :update, id: @assistance, assistance: { alumno_id: @assistance.alumno_id, curso_id: @assistance.curso_id, fch: @assistance.fch, grupo_id: @assistance.grupo_id, horario_id: @assistance.horario_id, profesor_id: @assistance.profesor_id }
    assert_redirected_to assistance_path(assigns(:assistance))
  end

  test "should destroy assistance" do
    assert_difference('Assistance.count', -1) do
      delete :destroy, id: @assistance
    end

    assert_redirected_to assistances_path
  end
end
