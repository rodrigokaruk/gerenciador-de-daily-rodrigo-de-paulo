require 'test_helper'

class FormulatiosControllerTest < ActionController::TestCase
  setup do
    @formulatio = formulatios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:formulatios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create formulatio" do
    assert_difference('Formulatio.count') do
      post :create, formulatio: { pessoa_id: @formulatio.pessoa_id, tipo: @formulatio.tipo }
    end

    assert_redirected_to formulatio_path(assigns(:formulatio))
  end

  test "should show formulatio" do
    get :show, id: @formulatio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @formulatio
    assert_response :success
  end

  test "should update formulatio" do
    patch :update, id: @formulatio, formulatio: { pessoa_id: @formulatio.pessoa_id, tipo: @formulatio.tipo }
    assert_redirected_to formulatio_path(assigns(:formulatio))
  end

  test "should destroy formulatio" do
    assert_difference('Formulatio.count', -1) do
      delete :destroy, id: @formulatio
    end

    assert_redirected_to formulatios_path
  end
end
