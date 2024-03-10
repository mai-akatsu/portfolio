class RemoveColumnFromPost < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :title, :string
    remove_column :posts, :date, :datetime
  end
end
