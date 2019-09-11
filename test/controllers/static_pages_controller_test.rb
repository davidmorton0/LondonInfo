require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest

  title_ending = " - London Info"

  test "home page" do
    get home_url
    assert_response :success
    assert_select "title", "Home" + title_ending
    assert_select "h1", "London Info Main Page"
    assert_match "home", body
  end

  test "help page" do
    get help_url
    assert_response :success
    assert_select "title", "Help" + title_ending
    assert_select "h1", "London Info Help Page"
    assert_match "help", body
    assert_match "Click", body
  end
  
  #content tests
  test "londoneye page" do
    get londoneye_url
    assert_response :success
    assert_select "title", ("London Eye" + title_ending)
    assert_select "h1", "London Eye"
    assert_match "London Eye", body
  end

  test "toweroflondon page" do
    get toweroflondon_url
    assert_response :success
    assert_select "title", ("The Tower of London" + title_ending)
    assert_select "h1", "The Tower of London"
    assert_match "Tower of London", body
  end
  
  test "st pauls page" do
    get stpauls_url
    assert_response :success
    assert_select "title", ("St Pauls Cathedral" + title_ending)
    assert_select "h1", "St Pauls Cathedral"
    assert_match "St Pauls", body
  end

end