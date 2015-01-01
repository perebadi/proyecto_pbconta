require 'test_helper'

class ClientesControllerTest < ActionController::TestCase
  setup do
    @cliente = clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cliente" do
    assert_difference('Cliente.count') do
      post :create, cliente: { cif_nif: @cliente.cif_nif, cp: @cliente.cp, direccion: @cliente.direccion, email: @cliente.email, id_poblacion: @cliente.id_poblacion, id_provincia: @cliente.id_provincia, movil: @cliente.movil, nombre: @cliente.nombre, primer_apellido: @cliente.primer_apellido, razon_social: @cliente.razon_social, segundo_apellido: @cliente.segundo_apellido, telefono: @cliente.telefono, tipo: @cliente.tipo }
    end

    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should show cliente" do
    get :show, id: @cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cliente
    assert_response :success
  end

  test "should update cliente" do
    patch :update, id: @cliente, cliente: { cif_nif: @cliente.cif_nif, cp: @cliente.cp, direccion: @cliente.direccion, email: @cliente.email, id_poblacion: @cliente.id_poblacion, id_provincia: @cliente.id_provincia, movil: @cliente.movil, nombre: @cliente.nombre, primer_apellido: @cliente.primer_apellido, razon_social: @cliente.razon_social, segundo_apellido: @cliente.segundo_apellido, telefono: @cliente.telefono, tipo: @cliente.tipo }
    assert_redirected_to cliente_path(assigns(:cliente))
  end

  test "should destroy cliente" do
    assert_difference('Cliente.count', -1) do
      delete :destroy, id: @cliente
    end

    assert_redirected_to clientes_path
  end
end
