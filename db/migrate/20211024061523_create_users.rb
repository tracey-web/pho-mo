class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.text :email
      t.text :password
      t.text :username
      t.text :name
      t.date :dob
      t.text :avatar
      t.text :bio
      t.integer :followers
      t.integer :following
      t.integer :posts
      t.timestamps null: false
    end
  end
end
