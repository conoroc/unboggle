class User < ActiveRecord::Base
  attr_accessible :admin, :email, :name, :profile_name, :resource_count, :subscribe
end
