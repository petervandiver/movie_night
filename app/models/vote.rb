class Vote < ActiveRecord::Base

validates :title, presence: true
	validates :location, presence: true

end
