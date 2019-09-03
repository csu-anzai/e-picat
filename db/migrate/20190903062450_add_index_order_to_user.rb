class AddIndexOrderToUser < ActiveRecord::Migration[5.2]
  def change
  	add_reference :orders, :user, foreign_key: true, index: true
  end
end
