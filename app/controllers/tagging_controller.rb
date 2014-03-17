class TaggingController < ApplicationController

def new
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
        render 'new'
    else
        redirect_to "/employee/signin"
    end
end

def create
  tagging = Tagging.new
  tagging.blog_id = params[:blog_id]
  tagging.blogtag_id = params[:blogtag_id]
  tagging.save
  redirect_to "/tagging/new"
end

def all
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
       @tagging_list = Tagging.all.order("blog_id desc")
    else
        redirect_to "/employee/signin"
    end
end

def edit
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
       @tagging_list = Tagging.find_by(:id => params[:tagging_id])
    else
        redirect_to "/employee/signin"
    end
end

def update
  tagging = Tagging.find_by(:id => params[:tagging_id])
  tagging.blog_id = params[:blog_id]
  tagging.blogtag_id = params[:blogtag_id]
  tagging.save
  redirect_to "/tagging"
end

def destroy
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
        tagging = Tagging.find_by(:id => params[:tagging_id])
        tagging.destroy
        redirect_to "/tagging", notice: "Tagging pair has been deleted."
    else
        redirect_to "/employee/signin"
    end
end

end



