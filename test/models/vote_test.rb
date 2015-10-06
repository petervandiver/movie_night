require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
    @vote = votes(:one)
  end

  test 'has a valid fixture' do
    assert @vote.valid?
  end

should belong_to(:event)
should belong_to(:movie)

should validate_presence_of(:person)
should validate_presence_of(:title)
should validate_presence_of(:location)


end
