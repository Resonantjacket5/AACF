class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_students_graduation_year, only: [:new, :create]

  # GET /students
  # GET /students.json
  def index
    @students = Student.all
  end

  # GET /students/1
  # GET /students/1.json
  def show
    @events = @student.events
  end

  # GET /students/new
  def new
    @student = Student.new
    @event = Event.where(id: params[:event_id]).first
    
    respond_to do |format|
      format.html
      format.js
    end
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = Student.new(student_params)
    @event = Event.where(id: params[:event_id]).first
    @students = @event.students
    @attendance = Attendance.new

    respond_to do |format|
      if @student.save
        format.html { redirect_to students_path, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
        format.js  do
          case @student.graduation_year
              when @senior
                @Seniors = Student.where(graduation_year: @senior)
                render 'senior.js.erb'
              when @junior
                @Juniors = Student.where(graduation_year: @junior)
                render 'junior.js.erb'
              when @sophomore
                @Sophomores = Student.where(graduation_year: @sophomore)
                render 'sophomore.js.erb'
              when @freshman
                @Freshmen = Student.where(graduation_year: @freshman)
                render 'freshman.js.erb'
              else
                @Others = Student.where("graduation_year < #{@senior} OR graduation_year > #{@freshman}")
                render 'other.js.erb'
          end
        end
            
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :graduation_year, :email, :contact, :event_id)
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
end
