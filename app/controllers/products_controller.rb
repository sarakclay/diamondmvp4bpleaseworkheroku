class ProductsController < ApplicationController

#MVP 1 until we have products to post
def soon
end

def buycontacts
  potbuyer = Potbuyer.new
  potbuyer.first_name = params[:first_name]
  potbuyer.last_name = params[:last_name]
  potbuyer.phone = params[:phone]
  potbuyer.email = params[:email]
  potbuyer.ring_description = params[:ring_description]
  potbuyer.save
  redirect_to "/diamonds", notice: "Thanks for your interest in buying one of our engagement rings.  We'll be in touch soon!"
end

def sellcontacts
  potseller = Potseller.new
  potseller.first_name = params[:first_name]
  potseller.last_name = params[:last_name]
  potseller.phone = params[:phone]
  potseller.email = params[:email]
  potseller.ring_description = params[:ring_description]
  potseller.save
  redirect_to "/diamonds", notice: "Thanks for your interest in selling your engagement ring.  We'll be in touch soon!"
end

#FULL Diamond page once we have products to post
def new
    @employee = Employee.find_by(:id => session[:employee_id])
    if @employee.present?
        render 'new'
    else
        redirect_to "/employee/signin"
    end
end

def create
  product = Product.new
  product.name = params[:name]
  product.depth = params[:depth]
  product.carat = params[:carat]
  product.ourprice = params[:ourprice]
  product.retailprice = params[:retailprice]
  product.save
  redirect_to "/products/new"
end

def all
  @product_list = Product.all.order("retailprice desc")
end

def show
  @product_list = Product.find_by(:id => params[:product_id])
end

def edit
    @product_list = Product.find_by(:id => params[:product_id])
end

def update
    product = Product.find_by(:id => params[:product_id])
    product.name = params[:name]
    product.depth = params[:depth]
    product.carat = params[:carat]
    product.ourprice = params[:ourprice]
    product.retailprice = params[:retailprice]
    product.save
    redirect_to "/products/all"
end

def destroy
    product_list = Product.find_by(:id => params[:product_id])
    product_list.destroy
    redirect_to "/products/all", notice: "Product has been deleted."
end

end
