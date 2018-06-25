require 'test_helper'

class SellerBuyersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @seller_buyer = seller_buyers(:one)
  end

  test "should get index" do
    get seller_buyers_url
    assert_response :success
  end

  test "should get new" do
    get new_seller_buyer_url
    assert_response :success
  end

  test "should create seller_buyer" do
    assert_difference('SellerBuyer.count') do
      post seller_buyers_url, params: { seller_buyer: { product_id: @seller_buyer.product_id, user_id: @seller_buyer.user_id } }
    end

    assert_redirected_to seller_buyer_url(SellerBuyer.last)
  end

  test "should show seller_buyer" do
    get seller_buyer_url(@seller_buyer)
    assert_response :success
  end

  test "should get edit" do
    get edit_seller_buyer_url(@seller_buyer)
    assert_response :success
  end

  test "should update seller_buyer" do
    patch seller_buyer_url(@seller_buyer), params: { seller_buyer: { product_id: @seller_buyer.product_id, user_id: @seller_buyer.user_id } }
    assert_redirected_to seller_buyer_url(@seller_buyer)
  end

  test "should destroy seller_buyer" do
    assert_difference('SellerBuyer.count', -1) do
      delete seller_buyer_url(@seller_buyer)
    end

    assert_redirected_to seller_buyers_url
  end
end
