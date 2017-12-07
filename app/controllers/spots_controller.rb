class SpotsController < ApplicationController

  before_action :set_spot, only: [:show, :edit, :update, :destroy]

  def index
    @search = Spot.ransack(params[:q])
    @spots = @search.result(distinct: true)
    respond_to do |format|
      format.html
      format.json
    end

  end

  def show
    @comment = @spot.comments.build
    @comments = @spot.comments
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
    if params[:cache][:picture] != ""
      @spot.picture.retrieve_from_cache! params[:cache][:picture]
    end
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
      params.require(:spot).permit(:title, :memo, :picture, :name, :postal_code, :region, :address, :start_time, :close_time, :hot_water, :female_only, :female_only_room, :rental_stroller, :baby_chair, :kids_space, :microwave, :sink, :diapers_trash_bin, :diaper_stand_count, :diaper_stand, :baby_scales)
    end

    def set_spot
      @spot = Spot.find(params[:id])
    end
end
