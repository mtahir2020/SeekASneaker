class AddSizeToSneakers < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :size, :integer
  end
end
