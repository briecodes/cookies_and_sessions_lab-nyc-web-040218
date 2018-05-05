class ProductsController < ApplicationController
    def index
        if params[:product]
            cart = session[:cart] || []
            cart << params[:product]
            session[:cart] = cart
        end
    end
end
