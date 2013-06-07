require 'test_helper'

class AnonymousAddsTaskTest < ActionDispatch::IntegrationTest

  test "posting a new task" do
    visit '/'
    click_link 'Add Task'
    fill_in 'Title', with: 'This is the first task!'
    click_button 'Submit Task'
    assert_include page.body, "Your task has now been added!"
    visit '/tasks'
    assert_include page.body, "This is the first task!"
  end
end
