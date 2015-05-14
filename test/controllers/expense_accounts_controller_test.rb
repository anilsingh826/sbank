require 'test_helper'

class ExpenseAccountsControllerTest < ActionController::TestCase
  setup do
    @expense_account = expense_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:expense_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create expense_account" do
    assert_difference('ExpenseAccount.count') do
      post :create, expense_account: { amount: @expense_account.amount, date: @expense_account.date, description: @expense_account.description, user_id: @expense_account.user_id }
    end

    assert_redirected_to expense_account_path(assigns(:expense_account))
  end

  test "should show expense_account" do
    get :show, id: @expense_account
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @expense_account
    assert_response :success
  end

  test "should update expense_account" do
    patch :update, id: @expense_account, expense_account: { amount: @expense_account.amount, date: @expense_account.date, description: @expense_account.description, user_id: @expense_account.user_id }
    assert_redirected_to expense_account_path(assigns(:expense_account))
  end

  test "should destroy expense_account" do
    assert_difference('ExpenseAccount.count', -1) do
      delete :destroy, id: @expense_account
    end

    assert_redirected_to expense_accounts_path
  end
end
