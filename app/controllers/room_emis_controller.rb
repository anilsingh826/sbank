class RoomEmisController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room_emi, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @room_emis = RoomEmi.all
    respond_with(@room_emis)
  end

  def show
    respond_with(@room_emi)
  end

  def new
    @room_emi = RoomEmi.new
    respond_with(@room_emi)
  end

  def edit
  end

  def create
    @room_emi = RoomEmi.new(room_emi_params)
    @room_emi.save
    respond_with(@room_emi)
  end

  def update
    @room_emi.update(room_emi_params)
    respond_with(@room_emi)
  end

  def destroy
    @room_emi.destroy
    respond_with(@room_emi)
  end

  private
    def set_room_emi
      @room_emi = RoomEmi.find(params[:id])
    end

    def room_emi_params
      params.require(:room_emi).permit(:title, :amount, :user_id, :date)
    end
end
