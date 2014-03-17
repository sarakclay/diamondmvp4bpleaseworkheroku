class TagController < ApplicationController

def new
    @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
        render 'new'
    else
        redirect_to "/employee/signin"
    end
end

def create
  tag = Blogtag.new
  tag.tag = params[:tag]
  tag.save
  redirect_to "/tag"
end

def all
  @employee = Employee.find_by(:id => session[:employee_id])
   if @employee.present?
    @tag_list = Blogtag.all.order("tag")
   else
     redirect_to "/employee/signin"
   end
end

def edit
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
       @tag_list = Blogtag.find_by(:id => params[:tag_id])
    else
       redirect_to "/employee/signin"
    end
end

def update
  tag = Blogtag.find_by(:id => params[:tag_id])
  tag.tag = params[:tag]
  tag.save
    redirect_to "/tag"
end

def destroy
  @employee = Employee.find_by(:id => session[:employee_id])
  if @employee.present?
    tag = Blogtag.find_by(:id => params[:tag_id])
    tag.destroy
    redirect_to "/tag", notice: "Tag has been deleted."
  else
        redirect_to "/employee/signin"
  end
end

end



