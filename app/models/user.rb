class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :profile_name, :resource_count, :subscribe

  has_many :resources
end
