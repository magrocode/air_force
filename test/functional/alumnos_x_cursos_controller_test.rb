require 'test_helper'

class AlumnosXCursosControllerTest < ActionController::TestCase
  setup do
    @alumnos_x_curso = alumnos_x_cursos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alumnos_x_cursos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alumnos_x_curso" do
    assert_difference('AlumnosXCurso.count') do
      post :create, alumnos_x_curso: @alumnos_x_curso.attributes
    end

    assert_redirected_to alumnos_x_curso_path(assigns(:alumnos_x_curso))
  end

  test "should show alumnos_x_curso" do
    get :show, id: @alumnos_x_curso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alumnos_x_curso
    assert_response :success
  end

  test "should update alumnos_x_curso" do
    put :update, id: @alumnos_x_curso, alumnos_x_curso: @alumnos_x_curso.attributes
    assert_redirected_to alumnos_x_curso_path(assigns(:alumnos_x_curso))
  end

  test "should destroy alumnos_x_curso" do
    assert_difference('AlumnosXCurso.count', -1) do
      delete :destroy, id: @alumnos_x_curso
    end

    assert_redirected_to alumnos_x_cursos_path
  end
end
