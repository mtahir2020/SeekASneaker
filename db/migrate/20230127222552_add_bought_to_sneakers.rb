class AddBoughtToSneakers < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :bought, :boolean, default: false, null: false
  end
end
