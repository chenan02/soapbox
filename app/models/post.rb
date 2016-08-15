class Post < ActiveRecord::Base
  belongs_to :channel
  validates_prescence_of :body, :channel_id
end
