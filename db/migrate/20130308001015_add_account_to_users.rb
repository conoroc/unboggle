class AddAccountToUsers < ActiveRecord::Migration
  def change
    add_column :users, :account, :string, :default => "member"
  end
end
