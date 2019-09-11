require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'static_pages/home'
    assert_select "a[href=?]", root_path, count: 1
    assert_select "a[href=?]", home_path, count: 2
    assert_select "a[href=?]", help_path, count: 1
    assert_select "a[href=?]", londoneye_path, count: 2
    assert_select "a[href=?]", toweroflondon_path, count: 2
    assert_select "a[href=?]", stpauls_path, count: 2
    get help_path
    assert_select "title", full_title("Help")
  end
end
