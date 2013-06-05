require 'test_helper'

class AnonymousAddsTodoTaskTest < ActionDispatch::IntegrationTest
  test "view a list of tasks" do
    Task.create!(title: "First Task")
    Task.create!(title: "Second Task")
    assert_equal 2, Task.count
    visit '/tasks'
    assert_include page.body, "First Task"
    assert_include page.body, "Second Task"
  end
end
