require 'test_helper'

class RecordAsControllerTest < ActionController::TestCase
  setup do
    @record_a = record_as(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_as)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_a" do
    assert_difference('RecordA.count') do
      post :create, record_a: { attr1: @record_a.attr1, attr2: @record_a.attr2, attr3: @record_a.attr3, attr4: @record_a.attr4, attr5: @record_a.attr5 }
    end

    assert_redirected_to record_a_path(assigns(:record_a))
  end

  test "should show record_a" do
    get :show, id: @record_a
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_a
    assert_response :success
  end

  test "should update record_a" do
    patch :update, id: @record_a, record_a: { attr1: @record_a.attr1, attr2: @record_a.attr2, attr3: @record_a.attr3, attr4: @record_a.attr4, attr5: @record_a.attr5 }
    assert_redirected_to record_a_path(assigns(:record_a))
  end

  test "should destroy record_a" do
    assert_difference('RecordA.count', -1) do
      delete :destroy, id: @record_a
    end

    assert_redirected_to record_as_path
  end
end
