require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

	def setup
		@event = events(:february)
	end

	test 'has a valid fixture' do
		assert @event.valid?
	end

	should validate_presence_of(:occurs_at)
	should validate_presence_of(:location)

	should validate_uniqueness_of(:location).
    scoped_to(:occurs_at).
    with_message('already an event scheduled there at that time').
    case_insensitive

end
