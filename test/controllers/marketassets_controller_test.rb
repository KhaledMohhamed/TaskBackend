require 'test_helper'

class MarketassetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @marketasset = marketassets(:one)
  end

  test "should get index" do
    get marketassets_url
    assert_response :success
  end

  test "should get new" do
    get new_marketasset_url
    assert_response :success
  end

  test "should create marketasset" do
    assert_difference('Marketasset.count') do
      post marketassets_url, params: { marketasset: { name: @marketasset.name, value: @marketasset.value } }
    end

    assert_redirected_to marketasset_url(Marketasset.last)
  end

  test "should show marketasset" do
    get marketasset_url(@marketasset)
    assert_response :success
  end

  test "should get edit" do
    get edit_marketasset_url(@marketasset)
    assert_response :success
  end

  test "should update marketasset" do
    patch marketasset_url(@marketasset), params: { marketasset: { name: @marketasset.name, value: @marketasset.value } }
    assert_redirected_to marketasset_url(@marketasset)
  end

  test "should destroy marketasset" do
    assert_difference('Marketasset.count', -1) do
      delete marketasset_url(@marketasset)
    end

    assert_redirected_to marketassets_url
  end
end
