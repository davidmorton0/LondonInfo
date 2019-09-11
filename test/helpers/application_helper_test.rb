require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  test "full title helper" do
    assert_equal full_title,         "London - London Info"
    assert_equal full_title("Help"), "Help - London Info"
  end
end