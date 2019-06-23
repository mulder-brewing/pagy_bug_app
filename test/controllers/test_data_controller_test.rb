require 'test_helper'

class TestDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @test_datum = test_data(:one)
  end

  test "should get index" do
    get test_data_url
    assert_response :success
  end

  test "should get new" do
    get new_test_datum_url
    assert_response :success
  end

  test "should create test_datum" do
    assert_difference('TestDatum.count') do
      post test_data_url, params: { test_datum: { name: @test_datum.name } }
    end

    assert_redirected_to test_datum_url(TestDatum.last)
  end

  test "should show test_datum" do
    get test_datum_url(@test_datum)
    assert_response :success
  end

  test "should get edit" do
    get edit_test_datum_url(@test_datum)
    assert_response :success
  end

  test "should update test_datum" do
    patch test_datum_url(@test_datum), params: { test_datum: { name: @test_datum.name } }
    assert_redirected_to test_datum_url(@test_datum)
  end

  test "should destroy test_datum" do
    assert_difference('TestDatum.count', -1) do
      delete test_datum_url(@test_datum)
    end

    assert_redirected_to test_data_url
  end
end
