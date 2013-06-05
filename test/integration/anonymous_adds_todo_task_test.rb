require 'test_helper'

class AnonymousAddsTodoTaskTest < ActionDispatch::IntegrationTest
  test "posting a new task" do
    visit '/'
    click_link 'Write Task'
    fill_in 'Title', with: 'This is the first task!'
    click_button 'Submit Task'
    assert_include page.body, "Your task has been published"
    visit '/tasks'
    assert_include page.body, "This is the first task!"
  end
  
end