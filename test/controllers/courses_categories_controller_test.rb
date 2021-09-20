require "test_helper"

class CoursesCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @courses_category = courses_categories(:one)
  end

  test "should get index" do
    get courses_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_courses_category_url
    assert_response :success
  end

  test "should create courses_category" do
    assert_difference('CoursesCategory.count') do
      post courses_categories_url, params: { courses_category: {  } }
    end

    assert_redirected_to courses_category_url(CoursesCategory.last)
  end

  test "should show courses_category" do
    get courses_category_url(@courses_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_courses_category_url(@courses_category)
    assert_response :success
  end

  test "should update courses_category" do
    patch courses_category_url(@courses_category), params: { courses_category: {  } }
    assert_redirected_to courses_category_url(@courses_category)
  end

  test "should destroy courses_category" do
    assert_difference('CoursesCategory.count', -1) do
      delete courses_category_url(@courses_category)
    end

    assert_redirected_to courses_categories_url
  end
end
