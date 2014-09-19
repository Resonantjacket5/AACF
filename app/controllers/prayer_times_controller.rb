class PrayerTimesController < ApplicationController
  before_action :set_prayer_time, only: [:show, :edit, :update, :destroy]

  # GET /prayer_times
  # GET /prayer_times.json
  def index
    @prayer_times = PrayerTime.all
  end

  # GET /prayer_times/1
  # GET /prayer_times/1.json
  def show
  end

  # GET /prayer_times/new
  def new
    @prayer_time = PrayerTime.new
  end

  # GET /prayer_times/1/edit
  def edit
  end
  
  def prayer
    @prayer_images = PrayerTime.where(image_active: true)
    @prayer_times = PrayerTime.all
  end

  # POST /prayer_times
  # POST /prayer_times.json
  def create
    @prayer_time = PrayerTime.new(prayer_time_params)

    respond_to do |format|
      if @prayer_time.save
        format.html { redirect_to @prayer_time, notice: 'Prayer time was successfully created.' }
        format.json { render :show, status: :created, location: @prayer_time }
      else
        format.html { render :new }
        format.json { render json: @prayer_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prayer_times/1
  # PATCH/PUT /prayer_times/1.json
  def update
    respond_to do |format|
      if @prayer_time.update(prayer_time_params)
        format.html { redirect_to @prayer_time, notice: 'Prayer time was successfully updated.' }
        format.json { render :show, status: :ok, location: @prayer_time }
      else
        format.html { render :edit }
        format.json { render json: @prayer_time.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prayer_times/1
  # DELETE /prayer_times/1.json
  def destroy
    @prayer_time.destroy
    respond_to do |format|
      format.html { redirect_to prayer_times_url, notice: 'Prayer time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prayer_time
      @prayer_time = PrayerTime.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prayer_time_params
      params.require(:prayer_time).permit(:location, :event_time, :weekday, :img_url, :image_active)
    end
end
