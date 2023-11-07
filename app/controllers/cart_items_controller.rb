class CartItemsController < ApplicationController
    def new
        @cart_item = CartItem.new(product_id: params[:product_id])
        logger.debug("aaaaaaaaaa")
    end
    
    def create
        logger.debug("dddddddddddddddddddddd")
        @cart_item = CartItem.new(
        qty: params[:cart_item][:qty],
        product_id: params[:cart_item][:product_id],
        cart_id: current_cart.id)
        if @cart_item.save
            logger.debug("bbbbbbbbbbbbbbbbbb")
            redirect_to root_path
        else
            logger.debug("cccccccccccccccc")
            logger.debug(@cart_item.errors.full_messages)
            render 'new'
        end
    end
    
    def destroy
        logger.debug("eeeeeeeeeeeeeeeeeeeeeee")
        cart_item = CartItem.find(params[:id])
        cart_item.destroy
        redirect_to root_path
    end
end

