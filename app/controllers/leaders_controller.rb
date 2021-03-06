class LeadersController < ApplicationController
  before_action :set_leader, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:indexedit, :new, :edit, :create, :update, :destroy]
  before_action :check_admin, only: [:indexedit, :new, :edit, :create, :update, :destroy]



  # GET /leaders
  # GET /leaders.json
  def index
    @leaders = Leader.all
    @leaders_page_link = StaticText.where(title: "leaders_page_link").pluck(:body).flatten.join(" ")
  end

  # GET /leaders/1
  # GET /leaders/1.json
  def show
  end

  def profile
    @leader = Leader.find(params[:leader_id])
    
    respond_to do |format|
      format.js
    end
  end

  def tabs
    param1 = params[:my_param]
    @leaders = Leader.where("leadership_position = ?", params[:my_param])
    
    respond_to do |format|
      format.html
      format.js
    end
  end
  
  def indexedit
    @leaders = Leader.all
  end


  # GET /leaders/new
  def new
    @leader = Leader.new
  end

  # GET /leaders/1/edit
  def edit
  end

  # POST /leaders
  # POST /leaders.json
  def create
    @leader = Leader.new(leader_params)

    respond_to do |format|
      if @leader.save
        format.html { redirect_to @leader, notice: 'Leader was successfully created.' }
        format.json { render :show, status: :created, location: @leader }
      else
        format.html { render :new }
        format.json { render json: @leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leaders/1
  # PATCH/PUT /leaders/1.json
  def update
    respond_to do |format|
      if @leader.update(leader_params)
        format.html { redirect_to @leader, notice: 'Leader was successfully updated.' }
        format.json { render :show, status: :ok, location: @leader }
      else
        format.html { render :edit }
        format.json { render json: @leader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leaders/1
  # DELETE /leaders/1.json
  def destroy
    @leader.destroy
    respond_to do |format|
      format.html { redirect_to leaders_url, notice: 'Leader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_leader
      @leader = Leader.find(params[:id])
    end
    
    
    

    # Never trust parameters from the scary internet, only allow the white list through.
    def leader_params
      params.require(:leader).permit(:position, :name, :year, :major, :hometown, :email, :strange_fact, :interests, :leadership_position, :graduated, :contact_ok, :past_positions, :post_grad_email, :img_url)
    end
    
    def check_admin
      unless current_user.admin?
        render 'admin_approval'
      end
    end
end
