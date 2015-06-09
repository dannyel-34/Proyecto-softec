require 'test_helper'

class EstudiantesControllerTest < ActionController::TestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estudiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estudiante" do
    assert_difference('Estudiante.count') do
      post :create, estudiante: { direccion: @estudiante.direccion, fch_nacimiento: @estudiante.fch_nacimiento, genero: @estudiante.genero, mail: @estudiante.mail, municipio_id: @estudiante.municipio_id, num_doc: @estudiante.num_doc, pr_apellido: @estudiante.pr_apellido, pr_nombre: @estudiante.pr_nombre, sr_apellido: @estudiante.sr_apellido, sr_nombre: @estudiante.sr_nombre, telefono: @estudiante.telefono, tipo_doc_id: @estudiante.tipo_doc_id }
    end

    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should show estudiante" do
    get :show, id: @estudiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estudiante
    assert_response :success
  end

  test "should update estudiante" do
    patch :update, id: @estudiante, estudiante: { direccion: @estudiante.direccion, fch_nacimiento: @estudiante.fch_nacimiento, genero: @estudiante.genero, mail: @estudiante.mail, municipio_id: @estudiante.municipio_id, num_doc: @estudiante.num_doc, pr_apellido: @estudiante.pr_apellido, pr_nombre: @estudiante.pr_nombre, sr_apellido: @estudiante.sr_apellido, sr_nombre: @estudiante.sr_nombre, telefono: @estudiante.telefono, tipo_doc_id: @estudiante.tipo_doc_id }
    assert_redirected_to estudiante_path(assigns(:estudiante))
  end

  test "should destroy estudiante" do
    assert_difference('Estudiante.count', -1) do
      delete :destroy, id: @estudiante
    end

    assert_redirected_to estudiantes_path
  end
end
