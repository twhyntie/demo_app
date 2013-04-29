class Micropost < ActiveRecord::Base
  attr_accessible :content, :user_id

  # Associate a micropost with a user (clever!)
  belongs_to :user

  validates :content, :length => { :maximum => 140 }
end
