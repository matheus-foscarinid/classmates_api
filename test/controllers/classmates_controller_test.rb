require "test_helper"

class ClassmatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @classmate = classmates(:one)
  end

  test "should get index" do
    get classmates_url, as: :json
    assert_response :success
  end

  test "should create classmate" do
    assert_difference('Classmate.count') do
      post classmates_url, params: { classmate: { age: @classmate.age, email: @classmate.email, name: @classmate.name, registration_number: @classmate.registration_number } }, as: :json
    end

    assert_response 201
  end

  test "should show classmate" do
    get classmate_url(@classmate), as: :json
    assert_response :success
  end

  test "should update classmate" do
    patch classmate_url(@classmate), params: { classmate: { age: @classmate.age, email: @classmate.email, name: @classmate.name, registration_number: @classmate.registration_number } }, as: :json
    assert_response 200
  end

  test "should destroy classmate" do
    assert_difference('Classmate.count', -1) do
      delete classmate_url(@classmate), as: :json
    end

    assert_response 204
  end
end
