class Resource < ActiveRecord::Base
  attr_accessible :categ_a, :categ_b, :cost, :description, :keywords, :level, :link, :rating, :source, :title, :medium, :user_id, :year

belongs_to :user
has_many :comments, dependent: :destroy
end
