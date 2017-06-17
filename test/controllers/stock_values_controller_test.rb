require 'test_helper'

class StockValuesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_value = stock_values(:one)
  end

  test "should get index" do
    get stock_values_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_value_url
    assert_response :success
  end

  test "should create stock_value" do
    assert_difference('StockValue.count') do
      post stock_values_url, params: { stock_value: { ticker: @stock_value.ticker } }
    end

    assert_redirected_to stock_value_url(StockValue.last)
  end

  test "should show stock_value" do
    get stock_value_url(@stock_value)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_value_url(@stock_value)
    assert_response :success
  end

  test "should update stock_value" do
    patch stock_value_url(@stock_value), params: { stock_value: { ticker: @stock_value.ticker } }
    assert_redirected_to stock_value_url(@stock_value)
  end

  test "should destroy stock_value" do
    assert_difference('StockValue.count', -1) do
      delete stock_value_url(@stock_value)
    end

    assert_redirected_to stock_values_url
  end
end
