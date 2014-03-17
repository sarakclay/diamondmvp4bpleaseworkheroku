class UsersController < ApplicationController

def new
end

def create
  product = User.new
  product.first_name = params[:first_name]
  product.last_name = params[:last_name]
  product.password = params[:password]
  product.email = params[:email]
  product.save
  redirect_to "/"
end

def show
end

def signin
end

def authenticate
 user = User.find_by(:email => params[:email])
    if user.present?
        if user.password == params[:password]
           session[:user_id] = user.id
           redirect_to root_url, notice: "Welcome"
        else
           redirect_to "/users/signin", notice: "Incorrect Password"
        end
    else
    redirect_to "/users/signin", notice: "Unregistered Email"
    end
end

def logout
  reset_session
  redirect_to root_url
end

end
