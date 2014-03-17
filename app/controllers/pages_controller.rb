class PagesController < ApplicationController

def contact
end

def create
  contact = Contact.new
  contact.first_name = params[:first_name]
  contact.last_name = params[:last_name]
  contact.phone = params[:phone]
  contact.email = params[:email]
  contact.purpose = params[:purpose]
  contact.description = params[:description]
  contact.save
  redirect_to "/home", notice: "Thanks for contacting us!  We'll get back to you soon!"
end

#Actions for when we have products to post
def home
    @product_list = Product.all.order("retailprice desc")
end

#Actions for when we have products to post
def search
    @name = params[:name]
end

end
