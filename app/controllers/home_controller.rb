class HomeController < ApplicationController
  def search
      students = Student.search(params[:name])
      institutions = Institution.search(params[:name])
      @results = students + institutions 
  end
end
