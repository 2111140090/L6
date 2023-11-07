class Product < ApplicationRecord
    has_one :cart_item
    has_many :cart_item_carts, through: :cart_items, source: :cart
end
