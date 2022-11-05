class AddPhotosToSneakers < ActiveRecord::Migration[7.0]
  def change
    add_column :sneakers, :image_url, :string

  end
end
