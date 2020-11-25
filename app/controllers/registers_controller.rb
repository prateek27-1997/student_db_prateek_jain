class RegistersController < ApplicationController
  before_action :set_student, only: [:destroy]
  
  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end
end
