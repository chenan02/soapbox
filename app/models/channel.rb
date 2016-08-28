class Channel < ActiveRecord::Base
  include TwitterModule
  include TwilioModule
  has_many :subscriptions
  has_many :users, through: :subscriptions
  validates_presence_of :name, :description, :sources
  validates_uniqueness_of :name

  def send_news
    body = self.get_tweet(self.sources)
    self.send_message(self.users, body)
  end
end
