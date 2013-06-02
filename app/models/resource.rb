class Resource < ActiveRecord::Base
  attr_accessible :categ_a, :categ_b, :cost, :description, :keywords, :level,
                  :link, :rating, :source, :title, :medium, :user_id, :year, :category_id, :pdf, :image
  has_many :likes
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  mount_uploader :pdf, PdfUploader
  mount_uploader :image, ImageUploader

  validates :category_id, presence: true



  #def average_rating
  #  @value = 0
  #  self.ratings.each do |rating|
  #    @value = @value + rating.value
  #  end
  #  @total = self.ratings.size
  #  @value.to_f / @total.to_f
  #end



  def avg_rating
    average_rating = 0.0
    count = 0
    ratings.each do |rating|
      average_rating += rating.stars
      count += 1
    end

    if count != 0
      (average_rating / count)
    else
      count
    end
  end



  def previous
    self.class.first(:conditions => ["created_at < ?", created_at], :order => "created_at desc")
  end

  def next
    self.class.first(:conditions => ["created_at > ?", created_at], :order => "created_at asc")
  end


end
