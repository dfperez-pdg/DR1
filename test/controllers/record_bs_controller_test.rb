require 'test_helper'

class RecordBsControllerTest < ActionController::TestCase
  setup do
    @record_b = record_bs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:record_bs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create record_b" do
    assert_difference('RecordB.count') do
      post :create, record_b: { attr1: @record_b.attr1, attr2: @record_b.attr2, attr3: @record_b.attr3, attr4: @record_b.attr4, attr5: @record_b.attr5 }
    end

    assert_redirected_to record_b_path(assigns(:record_b))
  end

  test "should show record_b" do
    get :show, id: @record_b
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @record_b
    assert_response :success
  end

  test "should update record_b" do
    patch :update, id: @record_b, record_b: { attr1: @record_b.attr1, attr2: @record_b.attr2, attr3: @record_b.attr3, attr4: @record_b.attr4, attr5: @record_b.attr5 }
    assert_redirected_to record_b_path(assigns(:record_b))
  end

  test "should destroy record_b" do
    assert_difference('RecordB.count', -1) do
      delete :destroy, id: @record_b
    end

    assert_redirected_to record_bs_path
  end
end
