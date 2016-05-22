require 'test_helper'

class ClassesControllerTest < ActionController::TestCase
  setup do
    @class = classes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:classes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create class" do
    assert_difference('Classe.count') do
      post :create, class: { codigo: @class.codigo, course_id: @class.course_id, discipline_id: @class.discipline_id, num_aluno: @class.num_aluno, study_id: @class.study_id }
    end

    assert_redirected_to class_path(assigns(:class))
  end

  test "should show class" do
    get :show, id: @class
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @class
    assert_response :success
  end

  test "should update class" do
    patch :update, id: @class, class: { codigo: @class.codigo, course_id: @class.course_id, discipline_id: @class.discipline_id, num_aluno: @class.num_aluno, study_id: @class.study_id }
    assert_redirected_to class_path(assigns(:class))
  end

  test "should destroy class" do
    assert_difference('Classe.count', -1) do
      delete :destroy, id: @class
    end

    assert_redirected_to classes_path
  end
end
