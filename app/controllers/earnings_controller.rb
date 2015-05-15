class EarningsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_earning, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @earnings = current_user.earnings.all
    respond_with(@earnings)
  end

  def show
    respond_with(@earning)
  end

  def new
    @earning = current_user.earnings.new
    respond_with(@earning)
  end

  def edit
  end

  def create
    @earning = current_user.earnings.new(earning_params)
    @earning.save
    respond_with(@earning)
  end

  def update
    @earning.update(earning_params)
    respond_with(@earning)
  end

  def destroy
    @earning.destroy
    respond_with(@earning)
  end

  private
    def set_earning
      @earning = current_user.earnings.find(params[:id])
    end

    def earning_params
      params.require(:earning).permit(:business, :amount, :user_id, :date)
    end
end
