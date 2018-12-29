require 'test_helper'

class StockItemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_item = stock_items(:one)
  end

  test "should get index" do
    get stock_items_url, as: :json
    assert_response :success
  end

  test "should create stock_item" do
    assert_difference('StockItem.count') do
      post stock_items_url, params: { stock_item: { name: @stock_item.name, opening_balance_quantity: @stock_item.opening_balance_quantity, opening_balance_rate: @stock_item.opening_balance_rate, rate_of_duty: @stock_item.rate_of_duty, unit: @stock_item.unit } }, as: :json
    end

    assert_response 201
  end

  test "should show stock_item" do
    get stock_item_url(@stock_item), as: :json
    assert_response :success
  end

  test "should update stock_item" do
    patch stock_item_url(@stock_item), params: { stock_item: { name: @stock_item.name, opening_balance_quantity: @stock_item.opening_balance_quantity, opening_balance_rate: @stock_item.opening_balance_rate, rate_of_duty: @stock_item.rate_of_duty, unit: @stock_item.unit } }, as: :json
    assert_response 200
  end

  test "should destroy stock_item" do
    assert_difference('StockItem.count', -1) do
      delete stock_item_url(@stock_item), as: :json
    end

    assert_response 204
  end
end
