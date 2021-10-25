class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.text :photo
      t.text :location
      t.text :description
      t.timestamps null: false
    end
  end
end
