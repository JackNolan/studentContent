
require_relative 'studentclass'

class StudentApp < Sinatra::Base

  get '/' do
    @student_info = Student.new.get_all
		erb :index
  end

  get '/:studentname' do |studentname|
    first_name, last_name = studentname.split("_")
   # raise 404 if id_name > 20 || id_name < 1
  	@student_info = Student.new.find(first_name, last_name)
  	erb :student_page
  	
	end
end