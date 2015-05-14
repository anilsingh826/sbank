require 'test_helper'

class RoomEmisControllerTest < ActionController::TestCase
  setup do
    @room_emi = room_emis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:room_emis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create room_emi" do
    assert_difference('RoomEmi.count') do
      post :create, room_emi: { amount: @room_emi.amount, date: @room_emi.date, title: @room_emi.title, user_id: @room_emi.user_id }
    end

    assert_redirected_to room_emi_path(assigns(:room_emi))
  end

  test "should show room_emi" do
    get :show, id: @room_emi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @room_emi
    assert_response :success
  end

  test "should update room_emi" do
    patch :update, id: @room_emi, room_emi: { amount: @room_emi.amount, date: @room_emi.date, title: @room_emi.title, user_id: @room_emi.user_id }
    assert_redirected_to room_emi_path(assigns(:room_emi))
  end

  test "should destroy room_emi" do
    assert_difference('RoomEmi.count', -1) do
      delete :destroy, id: @room_emi
    end

    assert_redirected_to room_emis_path
  end
end
