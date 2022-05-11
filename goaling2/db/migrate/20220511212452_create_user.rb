class CreateUser < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null:false
      t.string :session_token, null:false
      t.string :password_digest, null:false
    end
    add_index :users, :session_token, unique: true 
    #Ex:- add_index("admin_users", "username")
  end
end
