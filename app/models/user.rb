class User < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :role
end
