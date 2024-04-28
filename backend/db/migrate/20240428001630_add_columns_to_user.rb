class AddColumnsToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email, :string, null: false, index: { unique: true }
    add_column :users, :admin, :boolean, default: false
    add_column :users, :password_digest, :string
  end
end
