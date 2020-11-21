module Api
  class RegistersController < BaseApiController
   def create
    student = Student.create(params[:email, :institution_id, :address, :full_name, :mobile])
      if student.save
        render json: student, adapter: :json, status: 201
      else
        render json: {errors: student.errors.full_messages}, status: 400
      end
    end
  end
end