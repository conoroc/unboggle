class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :profile_name
      t.string :email
      t.integer :resource_count
      t.boolean :admin
      t.boolean :subscribe

      t.timestamps
    end
  end
end
