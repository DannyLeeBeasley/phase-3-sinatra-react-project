class MenuItem < ActiveRecord::Base
    has_many :orders, through: :order_items
end