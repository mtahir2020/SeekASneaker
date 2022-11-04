class RemoveDateFromTableOrders < ActiveRecord::Migration[7.0]
  def change
    remove_column :orders, :date
  end
end
