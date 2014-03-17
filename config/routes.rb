Diamond2::Application.routes.draw do

root "products#soon"
get "/home" => "products#soon"

get "/contact" => "pages#contact"
get "/contact/create" => "pages#create"

#Diamonds
get "/diamonds" => "products#soon"
get "/diamonds/buycreate" => "products#buycontacts"
get "/diamonds/sellcreate" => "products#sellcontacts"

#About Us
get "/about" => "about#us"

#Careers
get "/careers" => "careers#show"

#Blog
#create
get "/blog/new" => "blog#new"
get "/blog/create" => "blog#create"
#read
get "/blog" => "blog#all"
get "/blog/:blog_id/show" => "blog#show"
#update
get "/blog/:blog_id/edit" => "blog#edit"
get "/blog/:blog_id/update" => "blog#update"
#delete
get "/blog/:blog_id/delete" => "blog#destroy"

#Tag
#create
get "/tag/new" => "tag#new"
get "/tag/create" => "tag#create"
#read
get "/tag" => "tag#all"
#update
get "/tag/:tag_id/edit" => "tag#edit"
get "/tag/:tag_id/update" => "tag#update"
#delete
get "/tag/:tag_id/delete" => "tag#destroy"

#Taggings
#create
get "/tagging/new" => "tagging#new"
get "/tagging/create" => "tagging#create"
#read
get "/tagging" => "tagging#all"
#update
get "/tagging/:tagging_id/edit" => "tagging#edit"
get "/tagging/:tagging_id/update" => "tagging#update"
#delete
get "/tagging/:tagging_id/delete" => "tagging#destroy"

#Blog Category
#create
get "/blogcategory/new" => "blogcategory#new"
get "/blogcategory/create" => "blogcategory#create"
#read
get "/blogcategory" => "blogcategory#all"
#update
get "/blogcategory/:blogcategory_id/edit" => "blogcategory#edit"
get "/blogcategory/:blogcategory_id/update" => "blogcategory#update"
#delete
get "/blogcategory/:blogcategory_id/delete" => "blogcategory#destroy"

#Employee sign-in
get "/employee/signin" => "employee#signin"
get "/employee/authenticate" => "employee#authenticate"
get "/employee/logout" => "employee#logout"


#ROUTES FOR WHEN WE HAVE PRODUCTS TO POST

#Products
#create
#get "/products/new" => "products#new"
#get "/products/create" => "products#create"

#read
#get "/products/all" => "products#all"
#get "/products/:product_id/show" => "products#show"

# update
#get "/products/:product_id/edit" => "products#edit"
#get "/products/:product_id/update" => "products#update"

#delete
#get "/products/:product_id/delete" => "products#destroy"

#Other links (purchase, proposal section, education section) for MVP iterations
#get "/search" => "pages#search"
#get "/purchase" => "orders#purchase"
#get "/proposals/all" => "proposals#all"
#get "/education/all" => "education#all"

#ROUTES FOR WHEN WE HAVE PRODUCTS USERS CAN SIGN INTO BUY, RATE OR BOOKMARK
#Create new user
#get "/users/new" => "users#new"
#get "/users/create" =>  "users#create"
#get "/users/:user_id/show" => "users#show"

#User sign-in
#get "/users/signin" => "users#signin"
#get "/users/authenticate" => "users#authenticate"
#get "/users/logout" => "users#logout"

end
