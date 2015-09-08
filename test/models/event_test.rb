require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

test 'has a valid fixture' do
	@event = events(:one)
	assert @event.valid?
 end


  should validate_presence_of(:occurs_at)
  should validate_presence_of(:location)

end
