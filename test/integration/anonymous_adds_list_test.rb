require 'test_helper'

class AnonymousAddsListTest < ActionDispatch::IntegrationTest

  test "posting a new list" do
    visit '/'
    click_link 'Add List'
    fill_in 'Title', with: 'This is the first list!'
    click_button 'Submit List'
    assert_include page.body, "Your list has now been added!"
    assert_include page.body, "This is the first list!"
  end
end
