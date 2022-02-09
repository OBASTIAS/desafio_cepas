require 'test_helper'

class MegazinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @megazine = megazines(:one)
  end

  test "should get index" do
    get megazines_url
    assert_response :success
  end

  test "should get new" do
    get new_megazine_url
    assert_response :success
  end

  test "should create megazine" do
    assert_difference('Megazine.count') do
      post megazines_url, params: { megazine: { name: @megazine.name, oenologist_id: @megazine.oenologist_id } }
    end

    assert_redirected_to megazine_url(Megazine.last)
  end

  test "should show megazine" do
    get megazine_url(@megazine)
    assert_response :success
  end

  test "should get edit" do
    get edit_megazine_url(@megazine)
    assert_response :success
  end

  test "should update megazine" do
    patch megazine_url(@megazine), params: { megazine: { name: @megazine.name, oenologist_id: @megazine.oenologist_id } }
    assert_redirected_to megazine_url(@megazine)
  end

  test "should destroy megazine" do
    assert_difference('Megazine.count', -1) do
      delete megazine_url(@megazine)
    end

    assert_redirected_to megazines_url
  end
end
