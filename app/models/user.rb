class User < ActiveRecord::Base
  has_many :subscriptions
  validates_presence_of :phone_number, :frequency
  validates_uniqueness_of :phone_number
end
