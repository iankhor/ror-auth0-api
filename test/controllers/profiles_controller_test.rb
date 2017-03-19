require 'test_helper'

class ProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get profiles_url, as: :json
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post profiles_url, params: { profile: { abn: @profile.abn, address: @profile.address, email: @profile.email, first_name: @profile.first_name, last_name: @profile.last_name, middle_name: @profile.middle_name, phone: @profile.phone, profession: @profile.profession, username: @profile.username } }, as: :json
    end

    assert_response 201
  end

  test "should show profile" do
    get profile_url(@profile), as: :json
    assert_response :success
  end

  test "should update profile" do
    patch profile_url(@profile), params: { profile: { abn: @profile.abn, address: @profile.address, email: @profile.email, first_name: @profile.first_name, last_name: @profile.last_name, middle_name: @profile.middle_name, phone: @profile.phone, profession: @profile.profession, username: @profile.username } }, as: :json
    assert_response 200
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete profile_url(@profile), as: :json
    end

    assert_response 204
  end
end
