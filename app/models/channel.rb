class Channel < ActiveRecord::Base
  extend TwitterModule
  extend TwilioModule
  has_many :subscriptions
  validates_presence_of :name, :description, :sources
  validates_uniqueness_of :name
end
