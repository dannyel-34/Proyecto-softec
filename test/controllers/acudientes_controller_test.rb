require 'test_helper'

class AcudientesControllerTest < ActionController::TestCase
  setup do
    @acudiente = acudientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:acudientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create acudiente" do
    assert_difference('Acudiente.count') do
      post :create, acudiente: { direccion: @acudiente.direccion, documento: @acudiente.documento, estado_civil_id: @acudiente.estado_civil_id, fch: @acudiente.fch, mail: @acudiente.mail, municipio_id: @acudiente.municipio_id, nombre: @acudiente.nombre, nombre_completo: @acudiente.nombre_completo, primer_apellido: @acudiente.primer_apellido, segundo_apellido: @acudiente.segundo_apellido, telefono: @acudiente.telefono, tipo_doc_id: @acudiente.tipo_doc_id }
    end

    assert_redirected_to acudiente_path(assigns(:acudiente))
  end

  test "should show acudiente" do
    get :show, id: @acudiente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @acudiente
    assert_response :success
  end

  test "should update acudiente" do
    patch :update, id: @acudiente, acudiente: { direccion: @acudiente.direccion, documento: @acudiente.documento, estado_civil_id: @acudiente.estado_civil_id, fch: @acudiente.fch, mail: @acudiente.mail, municipio_id: @acudiente.municipio_id, nombre: @acudiente.nombre, nombre_completo: @acudiente.nombre_completo, primer_apellido: @acudiente.primer_apellido, segundo_apellido: @acudiente.segundo_apellido, telefono: @acudiente.telefono, tipo_doc_id: @acudiente.tipo_doc_id }
    assert_redirected_to acudiente_path(assigns(:acudiente))
  end

  test "should destroy acudiente" do
    assert_difference('Acudiente.count', -1) do
      delete :destroy, id: @acudiente
    end

    assert_redirected_to acudientes_path
  end
end
