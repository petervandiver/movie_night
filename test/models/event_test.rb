require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	def setup
		@event = events(:january)
	end

	test 'has a valid fixture' do
		assert @event.valid?
	end

	should have_many(:movies)
	should have_many(:votes)

	should validate_presence_of(:occurs_at)
	should validate_presence_of(:location)

	should validate_uniqueness_of(:location).
    scoped_to(:occurs_at).
    with_message('already an event scheduled there at that time').
    case_insensitive

    test 'event has a winning movie' do
    assert_equal @event.winning_movie, movies(:coneheads)
  end

end
