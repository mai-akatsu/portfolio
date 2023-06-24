class RemovePasseordFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :passeord, :string
  end
end
