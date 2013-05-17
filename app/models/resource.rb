class Resource < ActiveRecord::Base
  attr_accessible :categ_a, :categ_b, :cost, :description, :keywords, :level,
                  :link, :rating, :source, :title, :medium, :user_id, :year, :category_id
  has_many :ratings
  has_many :raters, :through => :ratings, :source => :users
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :category_id, presence: true



  def average_rating
    @value = 0
    self.ratings.each do |rating|
      @value = @value + rating.value
    end
    @total = self.ratings.size
    @value.to_f / @total.to_f
  end


end
