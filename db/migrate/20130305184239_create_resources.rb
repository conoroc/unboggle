class CreateResources < ActiveRecord::Migration
  def change
    create_table :resources do |t|
      t.integer :user_id
      t.string :title
      t.string :source
      t.string :categ_a
      t.string :categ_b
      t.string :level
      t.integer :year
      t.string :cost
      t.string :type
      t.integer :rating
      t.string :link
      t.string :keywords
      t.text :description

      t.timestamps
    end
  end
end
