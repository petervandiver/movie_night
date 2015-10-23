require 'test_helper'

class VotesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

test "Event page shows how many votes each movie has" do
    january = events(:january)
    coneheads = movies(:coneheads)


     visit event_path(january)

    assert find("li", text: coneheads.title).has_content?("Votes: #{coneheads.votes.count}")
  
  end

  test "Event page allows you to vote on a movie" do
    january = events(:january)
    coneheads = movies(:coneheads)

    visit event_path(january)

    movie_row = find("li", text: coneheads.title)
    movie_row.click_link("Vote")

    assert_equal 2, coneheads.votes.count
    assert movie_row.has_content?("Votes: 2")
  end
end
