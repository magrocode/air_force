require 'test_helper'

class AsignaturasControllerTest < ActionController::TestCase
  setup do
    @asignatura = asignaturas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignaturas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignatura" do
    assert_difference('Asignatura.count') do
      post :create, asignatura: @asignatura.attributes
    end

    assert_redirected_to asignatura_path(assigns(:asignatura))
  end

  test "should show asignatura" do
    get :show, id: @asignatura
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignatura
    assert_response :success
  end

  test "should update asignatura" do
    put :update, id: @asignatura, asignatura: @asignatura.attributes
    assert_redirected_to asignatura_path(assigns(:asignatura))
  end

  test "should destroy asignatura" do
    assert_difference('Asignatura.count', -1) do
      delete :destroy, id: @asignatura
    end

    assert_redirected_to asignaturas_path
  end
end
