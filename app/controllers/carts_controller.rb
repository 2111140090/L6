class CartsController < ApplicationController
    def show
        #@cart = CartItem.all
        logger.debug("aaaaaaaaaa")
        #@cart_items = CartItem.find_by(cart_id: current_cart.id)
        @cart_items = CartItem.where(cart_id: current_cart.id)
    end
end
