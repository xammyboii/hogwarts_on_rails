class StudentsController < ApplicationController
  # GET /students
  def index
    @students = Student.order(:name)
  end
  # Automagically loads the associated view:
  # app/views/students/index.html.erb

  # GET /students/:id
  def show

  end
end
