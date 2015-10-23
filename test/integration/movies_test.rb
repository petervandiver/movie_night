require 'test_helper'

class MoviesTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test 'Event page shows all movies' do
  		january = events(:january)
  		coneheads = movies(:coneheads)


  		visit event_path(january)

  		assert page.has_link?(coneheads.title, href: coneheads.url)

  end
end
