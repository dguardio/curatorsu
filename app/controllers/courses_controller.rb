class CoursesController < ApplicationController
  before_action :set_course, only: [:view, :show, :edit, :update, :destroy]

  # GET /courses
  # GET /courses.json
  def index
    @courses = Course.all
  end

  # GET /courses/1
  # GET /courses/1.json
  def show
    @courses = Course.all
  end

  def view
    @course = Course.find(params[:id])  
  end

  # GET /courses/new
  def new
    @course = Course.new
    @courses = Course.all
  end

  # GET /courses/1/edit
  def edit
  end

  def add
     @user = User.find(params[:user_id])
     @courses = Course.all
     @course = Course.find(params[:id])
      if @user.courses.include? @course
       redirect_to user_course_mods_path(course_id: @course.id), notice: 'Already Enrolled.'
      else
       @course.users << @user
       redirect_to user_course_mods_path(course_id: @course.id), notice: 'You are now Enrolled for this course.' 
     end
  end

  # POST /courses
  # POST /courses.json


  def create
    authorize! :create, Course
    @courses = Course.all
    @course = Course.new(course_params)
    @course.users << User.find(params[:user_id])
    respond_to do |format|
      if @course.save
        format.html { render :show, notice: 'Course was successfully created.' }
        format.json { render :show, status: :created, location: @course }
      else
        format.html { render :new }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /courses/1
  # PATCH/PUT /courses/1.json
  def update
    authorize! :update, Course
    respond_to do |format|
      if @course.update(course_params)
        format.html { render :show, notice: 'Course was successfully updated.' }
        format.json { render :show, status: :ok, location: @course }
      else
        format.html { render :edit }
        format.json { render json: @course.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /courses/1
  # DELETE /courses/1.json
  def destroy
    authorize! :destroy, @course
    @course.destroy
    respond_to do |format|
      format.html { redirect_to courses_url, notice: 'Course was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
=begin
  def reg_course
    redirect_to :action => 'set_course'
    current_user.courses << @course
    respond_to do
      redirect_to :action => 'show'
    end
  end
=end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course
      @course = Course.find(params[:id])
      @courses = Course.all
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_params
      params.require(:course).permit(:name, :description, :timeline, :instructors, :image)
    end


end
