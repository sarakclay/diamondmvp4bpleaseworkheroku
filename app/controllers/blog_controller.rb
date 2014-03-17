class BlogController < ApplicationController

def new
    @employee = Employee.find_by(:id => session[:employee_id])
      if @employee.present?
        render 'new'
      else
        redirect_to "/employee/signin"
      end
end

def create
  blog = Blog.new
  blog.title = params[:title]
  blog.subhead = params[:subhead]
  blog.author = params[:author]
  blog.date = params[:date]
  blog.text = params[:text]
  blog.image = params[:image]
  blog.blogcategory_id = params[:blogcategory_id]
  blog.save
  redirect_to "/tagging/new"
end

def all
  @blog_list = Blog.all.order("date desc")
  @category_list = Blogcategory.all.order("category asc")
end

def show
  @blog_list = Blog.find_by(:id => params[:blog_id])
  @category_list = Blogcategory.find_by(:id => @blog_list.blogcategory_id)
  @tagging_list = Tagging.where(:blog_id => @blog_list.id).all
end

def edit
    @employee = Employee.find_by(:id => session[:employee_id])
      if @employee.present?
        @blog_list = Blog.find_by(:id => params[:blog_id])
      else
        redirect_to "/employee/signin"
      end
end

def update
  blog = Blog.find_by(:id => params[:blog_id])
  blog.title = params[:title]
  blog.subhead = params[:subhead]
  blog.author = params[:author]
  blog.date = params[:date]
  blog.text = params[:text]
  blog.image = params[:image]
  blog.blogcategory_id = params[:blogcategory_id]
  blog.save
    redirect_to "/blog"
end

def destroy
  @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
      blog_list = Blog.find_by(:id => params[:blog_id])
      blog_list.destroy
      redirect_to "/blog", notice: "Blog has been deleted."
    else
        redirect_to "/employee/signin"
    end
end

end
