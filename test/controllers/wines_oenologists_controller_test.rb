require 'test_helper'

class WinesOenologistsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wines_oenologist = wines_oenologists(:one)
  end

  test "should get index" do
    get wines_oenologists_url
    assert_response :success
  end

  test "should get new" do
    get new_wines_oenologist_url
    assert_response :success
  end

  test "should create wines_oenologist" do
    assert_difference('WinesOenologist.count') do
      post wines_oenologists_url, params: { wines_oenologist: { grade: @wines_oenologist.grade, oenologist_id: @wines_oenologist.oenologist_id, wine_id: @wines_oenologist.wine_id } }
    end

    assert_redirected_to wines_oenologist_url(WinesOenologist.last)
  end

  test "should show wines_oenologist" do
    get wines_oenologist_url(@wines_oenologist)
    assert_response :success
  end

  test "should get edit" do
    get edit_wines_oenologist_url(@wines_oenologist)
    assert_response :success
  end

  test "should update wines_oenologist" do
    patch wines_oenologist_url(@wines_oenologist), params: { wines_oenologist: { grade: @wines_oenologist.grade, oenologist_id: @wines_oenologist.oenologist_id, wine_id: @wines_oenologist.wine_id } }
    assert_redirected_to wines_oenologist_url(@wines_oenologist)
  end

  test "should destroy wines_oenologist" do
    assert_difference('WinesOenologist.count', -1) do
      delete wines_oenologist_url(@wines_oenologist)
    end

    assert_redirected_to wines_oenologists_url
  end
end
