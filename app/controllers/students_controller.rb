class StudentsController < ApplicationController
  # GET /students
  def index
    # The .includes removes our N+1 issue when
    # accessing the student houses in a loop in the view.
    @students = Student.includes(:house).order(:name)
  end
  # Automagically loads the associated view:
  # app/views/students/index.html.erb

  # GET /students/:id   => params[:id]
  def show
    @student = Student.find(params[:id])
  end
  # Automagically loads the associated view:
  # app/views/students/show.html.erb
end
