class AddPdfToResources < ActiveRecord::Migration
  def change
    add_column :resources, :pdf, :string
  end
end
