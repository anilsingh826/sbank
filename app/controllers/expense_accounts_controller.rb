class ExpenseAccountsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense_account, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @expense_accounts = current_user.expense_accounts.all
    respond_with(@expense_accounts)
  end

  def show
    respond_with(@expense_account)
  end

  def new
    @expense_account = current_user.expense_accounts.new
    respond_with(@expense_account)
  end

  def edit
  end

  def create
    @expense_account = current_user.expense_accounts.new(expense_account_params)
    @expense_account.save
    respond_with(@expense_account)
  end

  def update
    @expense_account.update(expense_account_params)
    respond_with(@expense_account)
  end

  def destroy
    @expense_account.destroy
    respond_with(@expense_account)
  end

  private
    def set_expense_account
      @expense_account = current_user.expense_accounts.find(params[:id])
    end

    def expense_account_params
      params.require(:expense_account).permit(:amount, :user_id, :date, :description)
    end
end
