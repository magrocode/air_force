require 'test_helper'

class AsignaturaXCursosControllerTest < ActionController::TestCase
  setup do
    @asignatura_x_curso = asignatura_x_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:asignatura_x_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create asignatura_x_curso" do
    assert_difference('AsignaturaXCurso.count') do
      post :create, asignatura_x_curso: @asignatura_x_curso.attributes
    end

    assert_redirected_to asignatura_x_curso_path(assigns(:asignatura_x_curso))
  end

  test "should show asignatura_x_curso" do
    get :show, id: @asignatura_x_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @asignatura_x_curso
    assert_response :success
  end

  test "should update asignatura_x_curso" do
    put :update, id: @asignatura_x_curso, asignatura_x_curso: @asignatura_x_curso.attributes
    assert_redirected_to asignatura_x_curso_path(assigns(:asignatura_x_curso))
  end

  test "should destroy asignatura_x_curso" do
    assert_difference('AsignaturaXCurso.count', -1) do
      delete :destroy, id: @asignatura_x_curso
    end

    assert_redirected_to asignatura_x_cursos_path
  end
end
