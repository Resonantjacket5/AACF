class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy, :attendance, :refresh_div]
  before_action :set_students_graduation_year, only: [:show, :attendance, :refresh_div]
  before_action :people_present, only: [:show, :refresh_div, :attendance]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
  
    @Students = @event.students
  

  
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end
  
  def refresh_div
  
    @event_attendances = Attendance.where(event_id: @event.id)
  
    respond_to do |format|
      format.js
    end
  
  end
  
  def attendance
    
    @attendance = Attendance.new
    
    @students = @event.students
    
    
    
    @Seniors = Student.where(graduation_year: @senior)
    @Juniors = Student.where(graduation_year: @junior)
    @Sophomores = Student.where(graduation_year: @sophomore)
    @Freshmen = Student.where(graduation_year: @freshman)
    @Others = Student.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
    
  end
  

  def attended
    
    @attendance = @event.attendances.new(event_params)


  end
  
  

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:name, :location, :event_type, :event_date, :student_id, :comment)
    end
    
    def set_students_graduation_year
      if Time.now.month >= 7
        @senior = Time.now.year + 1
        @junior = Time.now.year + 2
        @sophomore = Time.now.year + 3
        @freshman = Time.now.year + 4
      else
        @senior = Time.now.year
        @junior = Time.now.year + 1
        @sophomore = Time.now.year + 2
        @freshman = Time.now.year + 3
      end
    end
    
    def people_present
      @Seniors_present = @event.students.where(graduation_year: @senior)
      @Juniors_present = @event.students.where(graduation_year: @junior)
      @Sophomores_present = @event.students.where(graduation_year: @sophomore)
      @Freshmen_present = @event.students.where(graduation_year: @freshman)
      @Others_present = @event.students.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
    end
    
    
    
    
end
