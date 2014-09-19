class LargeGroupsController < ApplicationController
  before_action :set_large_group, only: [:show, :edit, :update, :destroy]

  # GET /large_groups
  # GET /large_groups.json
  def index
    @large_groups = LargeGroup.all
  end

  # GET /large_groups/1
  # GET /large_groups/1.json
  def show
  end

  # GET /large_groups/new
  def new
    @large_group = LargeGroup.new
  end
  
  
  def main
    @large_group = LargeGroup.first
  end
  
  
  

  # GET /large_groups/1/edit
  def edit
  end

  # POST /large_groups
  # POST /large_groups.json
  def create
    @large_group = LargeGroup.new(large_group_params)

    respond_to do |format|
      if @large_group.save
        format.html { redirect_to @large_group, notice: 'Large group was successfully created.' }
        format.json { render :show, status: :created, location: @large_group }
      else
        format.html { render :new }
        format.json { render json: @large_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /large_groups/1
  # PATCH/PUT /large_groups/1.json
  def update
    respond_to do |format|
      if @large_group.update(large_group_params)
        format.html { redirect_to @large_group, notice: 'Large group was successfully updated.' }
        format.json { render :show, status: :ok, location: @large_group }
      else
        format.html { render :edit }
        format.json { render json: @large_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /large_groups/1
  # DELETE /large_groups/1.json
  def destroy
    @large_group.destroy
    respond_to do |format|
      format.html { redirect_to large_groups_url, notice: 'Large group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_large_group
      @large_group = LargeGroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def large_group_params
      params.require(:large_group).permit(:weekday, :location, :description, :event_time, :img_url)
    end
end
