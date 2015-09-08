require 'test_helper'

class MovieTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  

  should validate_presence_of(:title)
  should validate_presence_of(:url)

 
end