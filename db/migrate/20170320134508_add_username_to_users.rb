class AddUsernameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username, :string # Add new column to table 'users' called 'username' with type of 'string'
    add_index :users, :username, unique: true # Index 'username' for quick lookup and ensure it is unique
  end
end
