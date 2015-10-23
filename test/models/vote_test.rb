require 'test_helper'

class VoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

def setup
    @vote = votes(:three)
  end

  test 'has a valid fixture' do
    assert @vote.valid?
  end

should belong_to(:event)
should belong_to(:movie)

should validate_presence_of(:movie)
should validate_presence_of(:event)


end
