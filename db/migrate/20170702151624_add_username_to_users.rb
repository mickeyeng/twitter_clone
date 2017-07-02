class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
  	# called username and type of string
  	add_column :users, :username, :string
  	# first, index_usernames for quick lookup. Second, ensure usernames are always unique  
  	add_index :users, :username, unique: true 
  end
end
