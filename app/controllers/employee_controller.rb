class EmployeeController < ApplicationController

def signin
end

def authenticate
  employee = Employee.find_by(:username => params[:username])
  if employee.present?
    if employee.password == params[:password]
      session[:employee_id] = employee.id
      redirect_to "/blog"
    else
      redirect_to "/employee/signin", notice: "Incorrect password."
    end
  else
    redirect_to "/employee/signin", notice: "Did not recognize username."
end
end

def logout
  reset_session
  redirect_to root_url
end

end
