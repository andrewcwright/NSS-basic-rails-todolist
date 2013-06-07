require 'test_helper'

class AnonymousBrowsesListsTest < ActionDispatch::IntegrationTest

  test "view a list of tasks" do
    List.create!(title: "First List")
    List.create!(title: "Second List")
    assert_equal 2, List.count
    visit '/'
    assert_include page.body, "First List"
    assert_include page.body, "Second List"
  end
end
