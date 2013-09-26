class Like < ActiveRecord::Base
   #attr_accessible :

  belongs_to :resource
  belongs_to :user
end
