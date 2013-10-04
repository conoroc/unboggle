class FixTypeColumn < ActiveRecord::Migration
  def up
    rename_column :resources, :type, :medium
  end

  def down
  end
end
