class Event < ActiveRecord::Base

has_many :movies
has_many :votes

validates :occurs_at, presence: true
validates :location, presence: true

validates :location, uniqueness: {
	scope: :occurs_at,
	message: 'already an event scheduled there at that time',
	case_sensitive: false
	}

def winning_movie
    Vote.where(movie: movies).select(:movie_id).group(:movie_id).order('count(id) desc').first.movie
  end


end
