class AttendancesController < ApplicationController
  before_action :set_attendance, only: [:show, :edit, :update, :destroy]
  before_action :set_students_graduation_year, only: [:create, :destroy_attendance]
  
  

  # GET /attendances
  # GET /attendances.json
  def index
    @attendances = Attendance.all
  end

  # GET /attendances/1
  # GET /attendances/1.json
  def show
  end

  # GET /attendances/new
  def new
    @attendance = Attendance.new
  end

  # GET /attendances/1/edit
  def edit
  end

  # POST /attendances
  # POST /attendances.json
  def create
    @attendance = Attendance.new(attendance_params)
    @attendance.save
    
    @event = Event.where(id: @attendance.event_id).first

    case @attendance.student.graduation_year
      when @senior
        @Seniors_present = @event.students.where(graduation_year: @senior)
        respond_to do |format|
          format.js { render 'senior_present.js.erb' }
        end
      when @junior
        @Juniors_present = @event.students.where(graduation_year: @junior)
        respond_to do |format|
          format.js { render 'junior_present.js.erb' }
        end
      when @sophomore
        @Sophomores_present = @event.students.where(graduation_year: @sophomore)
        respond_to do |format|
          format.js { render 'sophomore_present.js.erb' }
        end
      when @freshman
        @Freshmen_present = @event.students.where(graduation_year: @freshman)
        respond_to do |format|
          format.js { render 'freshman_present.js.erb' }
        end
      else
        @Others_present = @event.students.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
        respond_to do |format|
          format.js { render 'other_present.js.erb' }
        end
    end
  end

  # PATCH/PUT /attendances/1
  # PATCH/PUT /attendances/1.json
  def update
    respond_to do |format|
      if @attendance.update(attendance_params)
        format.html { redirect_to @attendance, notice: 'Attendance was successfully updated.' }
        format.json { render :show, status: :ok, location: @attendance }
      else
        format.html { render :edit }
        format.json { render json: @attendance.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy_attendance
    @attendance = Attendance.where("event_id = #{params[:event_id]} AND student_id = #{params[:student_id]}").first
    @attendance.destroy
    
    @student_id = @attendance.student_id
    
    @event = Event.where(id: @attendance.event_id).first
    @students = @event.students
    
    case @attendance.student.graduation_year
      when @senior
        @Seniors = Student.where(graduation_year: @senior)
        respond_to do |format|
          format.js { render 'senior.js.erb' }
        end
      when @junior
        @Juniors = Student.where(graduation_year: @junior)
        respond_to do |format|
          format.js { render 'junior.js.erb' }
        end
      when @sophomore
        @Sophomores = Student.where(graduation_year: @sophomore)
        respond_to do |format|
          format.js { render 'sophomore.js.erb' }
        end
      when @freshman
        @Freshmen = Student.where(graduation_year: @freshman)
        respond_to do |format|
          format.js { render 'freshman.js.erb' }
        end
      else
        @Others = Student.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
        respond_to do |format|
          format.js { render 'other.js.erb' }
        end
    end
    

  end

  # DELETE /attendances/1
  # DELETE /attendances/1.json
  def destroy
    @attendance.destroy
    respond_to do |format|
      format.html { redirect_to attendances_url, notice: 'Attendance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_attendance
      @attendance = Attendance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def attendance_params
      params.require(:attendance).permit(:student_id, :event_id, :comment)
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
    
    def set_event
    yield
      @event = Event.where(id: @attendance.event_id).first
    end  
    
    def people_present
      @Seniors_present = @event.students.where(graduation_year: @senior)
      @Juniors_present = @event.students.where(graduation_year: @junior)
      @Sophomores_present = @event.students.where(graduation_year: @sophomore)
      @Freshmen_present = @event.students.where(graduation_year: @freshman)
      @Others_present = @event.students.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
    end
    
    
end
