require 'test_helper'

class RentHousesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rent_house = rent_houses(:one)
  end

  test "should get index" do
    get rent_houses_url
    assert_response :success
  end

  test "should get new" do
    get new_rent_house_url
    assert_response :success
  end

  test "should create rent_house" do
    assert_difference('RentHouse.count') do
      post rent_houses_url, params: { rent_house: { address: @rent_house.address, age: @rent_house.age, home_name: @rent_house.home_name, note: @rent_house.note, rent: @rent_house.rent, stations: @rent_house.stations } }
    end

    assert_redirected_to rent_house_url(RentHouse.last)
  end

  test "should show rent_house" do
    get rent_house_url(@rent_house)
    assert_response :success
  end

  test "should get edit" do
    get edit_rent_house_url(@rent_house)
    assert_response :success
  end

  test "should update rent_house" do
    patch rent_house_url(@rent_house), params: { rent_house: { address: @rent_house.address, age: @rent_house.age, home_name: @rent_house.home_name, note: @rent_house.note, rent: @rent_house.rent, stations: @rent_house.stations } }
    assert_redirected_to rent_house_url(@rent_house)
  end

  test "should destroy rent_house" do
    assert_difference('RentHouse.count', -1) do
      delete rent_house_url(@rent_house)
    end

    assert_redirected_to rent_houses_url
  end
end
