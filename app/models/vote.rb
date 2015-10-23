class Vote < ActiveRecord::Base

belongs_to :event
belongs_to :movie

validates :movie, presence: true
validates :event, presence: true

end
