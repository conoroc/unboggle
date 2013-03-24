class Resource < ActiveRecord::Base
  attr_accessible :categ_a, :categ_b, :cost, :description, :keywords, :level,
                  :link, :rating, :source, :title, :medium, :user_id, :year, :category_id

belongs_to :user
belongs_to :category
has_many :comments, dependent: :destroy

validates :category_id, presence: true
end
