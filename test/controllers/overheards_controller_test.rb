require 'test_helper'

class OverheardsControllerTest < ActionController::TestCase
  setup do
    @overheard = overheards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:overheards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create overheard" do
    assert_difference('Overheard.count') do
      post :create, overheard: { author: @overheard.author, location: @overheard.location, oh_entry: @overheard.oh_entry, title: @overheard.title }
    end

    assert_redirected_to overheard_path(assigns(:overheard))
  end

  test "should show overheard" do
    get :show, id: @overheard
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @overheard
    assert_response :success
  end

  test "should update overheard" do
    patch :update, id: @overheard, overheard: { author: @overheard.author, location: @overheard.location, oh_entry: @overheard.oh_entry, title: @overheard.title }
    assert_redirected_to overheard_path(assigns(:overheard))
  end

  test "should destroy overheard" do
    assert_difference('Overheard.count', -1) do
      delete :destroy, id: @overheard
    end

    assert_redirected_to overheards_path
  end
end
