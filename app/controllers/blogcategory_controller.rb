class BlogcategoryController < ApplicationController

def new
    @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
        render 'new'
    else
        redirect_to "/employee/signin"
    end
end

def create
  blogcategory = Blogcategory.new
  blogcategory.category = params[:category]
  blogcategory.save
  redirect_to "/blogcategory"
end

def all
  @employee = Employee.find_by(:id => session[:employee_id])
  if @employee.present?
    @blogcategory_list = Blogcategory.all
  else
    redirect_to "/employee/signin"
  end
end

def edit
  @employee = Employee.find_by(:id => session[:employee_id])
  if @employee.present?
    @blogcategory_list = Blogcategory.find_by(:id => params[:blogcategory_id])
  else
    redirect_to "/employee/signin"
  end
end

def update
  blogcategory = Blogcategory.find_by(:id => params[:blogcategory_id])
  blogcategory.category = params[:category]
  blogcategory.save
  redirect_to "/blogcategory"
end

def destroy
  @employee = Employee.find_by(:id => session[:employee_id])
  if @employee.present?
    blogcategory_list = Blogcategory.find_by(:id => params[:blogcategory_id])
    blogcategory_list.destroy
    redirect_to "/blogcategory", notice: "Category has been deleted."
  else
    redirect_to "/employee/signin"
  end
end

end
