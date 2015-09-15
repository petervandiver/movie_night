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

should validate_presence_of(:person)
should validate_presence_of(:title)
should validate_presence_of(:location)


end
