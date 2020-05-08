require 'test_helper'

class PayExpensesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pay_expenses_index_url
    assert_response :success
  end

  test "should get create" do
    get pay_expenses_create_url
    assert_response :success
  end

  test "should get new" do
    get pay_expenses_new_url
    assert_response :success
  end

  test "should get edit" do
    get pay_expenses_edit_url
    assert_response :success
  end

  test "should get show" do
    get pay_expenses_show_url
    assert_response :success
  end

  test "should get update" do
    get pay_expenses_update_url
    assert_response :success
  end

  test "should get destroy" do
    get pay_expenses_destroy_url
    assert_response :success
  end

end
