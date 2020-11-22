module Api
  class StudentsController < ApplicationController
    def create
      student = Student.create(student_params)
      if student.save
        render json: student, adapter: :json, status: 201
      else
        render json: {errors: student.errors.full_messages}, status: 400
      end
    end

    private
    def student_params
      params.require(:student).permit(:full_name, :address, :mobile, :email, :institution_id)
    end
  end
end
