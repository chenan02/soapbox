class Post < ActiveRecord::Base
  belongs_to :channel
  validates_presence_of :body, :channel_id
end
