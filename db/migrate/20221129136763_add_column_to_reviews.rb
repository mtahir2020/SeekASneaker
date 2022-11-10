class AddColumnToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :reviewer, :string
  end
end
