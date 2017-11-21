class SpotsController < ApplicationController

  before_action :set_spot, only: [:edit, :update, :destroy]

  def index
    @spots = Spot.all
  end

  def new
    if params[:back]
      @spot = Spot.new(spots_params)
    else
      @spot = Spot.new
    end
  end

  def create
    @spot = Spot.create(spots_params)
    if @spot.save
      redirect_to spots_path, notice: "スポットを登録しました"
      NoticeMailer.sendmail_spot(@spot).deliver
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @spot.update(spots_params)
      redirect_to spots_path, notice: "スポットを修正しました"
    else
      render 'edit'
    end
  end

  def destroy
    @spot.destroy
    redirect_to spots_path, notice: "スポットを削除しました"
  end

  def confirm
    @spot = Spot.new(spots_params)
    render 'new' if @spot.invalid?
  end


  private
    def spots_params
      params.require(:spot).permit(:title, :content)
    end

    def set_spot
      @spot = Spot.find(params[:id])
    end
end
