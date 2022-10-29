class CreateSneakers < ActiveRecord::Migration[7.0]
  def change
    create_table :sneakers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.text :description

      t.timestamps
    end
  end
end
