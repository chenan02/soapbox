class Channel < ActiveRecord::Base
  has_many :subscriptions
  validates_presence_of :name, :description
  validates_uniqueness_of :name
end
