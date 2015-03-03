require 'test_helper'

class RecordCsControllerTest < ActionController::TestCase
  setup do
    @record_c = record_cs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_cs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_c" do
    assert_difference('RecordC.count') do
      post :create, record_c: { attr1: @record_c.attr1, attr2: @record_c.attr2, attr3: @record_c.attr3, attr4: @record_c.attr4, attr5: @record_c.attr5, attr6: @record_c.attr6 }
    end

    assert_redirected_to record_c_path(assigns(:record_c))
  end

  test "should show record_c" do
    get :show, id: @record_c
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_c
    assert_response :success
  end

  test "should update record_c" do
    patch :update, id: @record_c, record_c: { attr1: @record_c.attr1, attr2: @record_c.attr2, attr3: @record_c.attr3, attr4: @record_c.attr4, attr5: @record_c.attr5, attr6: @record_c.attr6 }
    assert_redirected_to record_c_path(assigns(:record_c))
  end

  test "should destroy record_c" do
    assert_difference('RecordC.count', -1) do
      delete :destroy, id: @record_c
    end

    assert_redirected_to record_cs_path
  end
end
