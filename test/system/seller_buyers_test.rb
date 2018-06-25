require "application_system_test_case"

class SellerBuyersTest < ApplicationSystemTestCase
  setup do
    @seller_buyer = seller_buyers(:one)
  end

  test "visiting the index" do
    visit seller_buyers_url
    assert_selector "h1", text: "Seller Buyers"
  end

  test "creating a Seller buyer" do
    visit seller_buyers_url
    click_on "New Seller Buyer"

    fill_in "Product", with: @seller_buyer.product_id
    fill_in "User", with: @seller_buyer.user_id
    click_on "Create Seller buyer"

    assert_text "Seller buyer was successfully created"
    click_on "Back"
  end

  test "updating a Seller buyer" do
    visit seller_buyers_url
    click_on "Edit", match: :first

    fill_in "Product", with: @seller_buyer.product_id
    fill_in "User", with: @seller_buyer.user_id
    click_on "Update Seller buyer"

    assert_text "Seller buyer was successfully updated"
    click_on "Back"
  end

  test "destroying a Seller buyer" do
    visit seller_buyers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Seller buyer was successfully destroyed"
  end
end
