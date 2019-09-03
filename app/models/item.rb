class Item < ApplicationRecord
	has_many :item_orders
	has_many :orders, through: :item_orders
	validates :title, presence: true
  validates :description,length: { in: 5..140 }
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than: 0, less_than: 1000000 }
end
