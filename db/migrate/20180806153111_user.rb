class User < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.datetime :created_at, :null => false
      t.datetime :updated_at, :null => false
    end
  end
end
