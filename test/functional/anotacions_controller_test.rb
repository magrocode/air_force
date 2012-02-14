require 'test_helper'

class AnotacionsControllerTest < ActionController::TestCase
  setup do
    @anotacion = anotacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anotacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anotacion" do
    assert_difference('Anotacion.count') do
      post :create, anotacion: @anotacion.attributes
    end

    assert_redirected_to anotacion_path(assigns(:anotacion))
  end

  test "should show anotacion" do
    get :show, id: @anotacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anotacion
    assert_response :success
  end

  test "should update anotacion" do
    put :update, id: @anotacion, anotacion: @anotacion.attributes
    assert_redirected_to anotacion_path(assigns(:anotacion))
  end

  test "should destroy anotacion" do
    assert_difference('Anotacion.count', -1) do
      delete :destroy, id: @anotacion
    end

    assert_redirected_to anotacions_path
  end
end
