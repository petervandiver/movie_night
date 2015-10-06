require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  



  should belong_to(:event)
  should have_many(:votes)

  should validate_presence_of(:title)
  should validate_presence_of(:url)

  should validate_uniqueness_of(:title).
    scoped_to(:event_id).
    with_message('already suggested for that event').
    case_insensitive
 

test 'should allow voting' do
    @movie.vote('Karen')
    @movie.vote('Mike')
    

    assert_equal @movie.votes.count, 5
  end


end