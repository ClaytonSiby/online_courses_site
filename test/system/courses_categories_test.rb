require 'application_system_test_case'

class CoursesCategoriesTest < ApplicationSystemTestCase
  setup do
    @courses_category = courses_categories(:one)
  end

  test 'visiting the index' do
    visit courses_categories_url
    assert_selector 'h1', text: 'Courses Categories'
  end

  test 'creating a Courses category' do
    visit courses_categories_url
    click_on 'New Courses Category'

    click_on 'Create Courses category'

    assert_text 'Courses category was successfully created'
    click_on 'Back'
  end

  test 'updating a Courses category' do
    visit courses_categories_url
    click_on 'Edit', match: :first

    click_on 'Update Courses category'

    assert_text 'Courses category was successfully updated'
    click_on 'Back'
  end

  test 'destroying a Courses category' do
    visit courses_categories_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Courses category was successfully destroyed'
  end
end
