class AddColumnToUsersTable < ActiveRecord::Migration
  def self.up
    # add_column      :users, :reset_password_token, :string, :limit => 255
    add_column      :users, :remember_created_at, :datetime
    add_column      :users, :sign_in_count, :int, :limit => 11
    add_column      :users, :current_sign_in_at, :datetime
    add_column      :users, :last_sign_in_at, :datetime
    add_column      :users, :current_sign_in_ip, :string, :limit => 255
    add_column      :users, :last_sign_in_ip, :string, :limit => 255
  end

  def self.down
    # remove_column  :users, :reset_password_token
    remove_column  :users, :remember_created_at
    remove_column  :users, :sign_in_count, :int
    remove_column  :users, :current_sign_in_at
    remove_column  :users, :last_sign_in_at
    remove_column  :users, :current_sign_in_ip
    remove_column  :users, :last_sign_in_ip
  end
end
