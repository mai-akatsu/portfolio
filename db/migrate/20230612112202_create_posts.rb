class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.string :title
      t.datetime :date

      t.timestamps
    end
  end
end
