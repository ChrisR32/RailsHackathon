require 'test_helper'

class ExpenseOccurrencesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get expense_occurrences_index_url
    assert_response :success
  end

  test "should get create" do
    get expense_occurrences_create_url
    assert_response :success
  end

  test "should get new" do
    get expense_occurrences_new_url
    assert_response :success
  end

  test "should get edit" do
    get expense_occurrences_edit_url
    assert_response :success
  end

  test "should get show" do
    get expense_occurrences_show_url
    assert_response :success
  end

  test "should get update" do
    get expense_occurrences_update_url
    assert_response :success
  end

  test "should get destroy" do
    get expense_occurrences_destroy_url
    assert_response :success
  end

end
