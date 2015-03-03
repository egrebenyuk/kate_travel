require 'test_helper'

class DestinationsControllerTest < ActionController::TestCase
  setup do
    @destination = destinations(:one)
    @trip = trips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:destinations)
  end

  test "should get new" do
    get :new, trip_id: @trip
    assert_response :success
  end

  test "should create destination" do
    assert_difference('Destination.count') do
      post :create, trip_id: @trip, destination: { description: @destination.description, name: @destination.name }
    end

    assert_redirected_to trip_destination_path(@trip, assigns(:destination))
  end

  test "should show destination" do
    get :show, trip_id: @trip, id: @destination
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @destination, trip_id: @trip
    assert_response :success
  end

  test "should update destination" do
    patch :update, trip_id: @trip, id: @destination, destination: { description: @destination.description, name: @destination.name }
    assert_redirected_to trip_destination_path(@trip, @destination)
  end

  test "should destroy destination" do
    trip = trips(:two)
    destination = destinations(:two)
    assert_difference('Destination.count', -1) do
      delete :destroy, trip_id: trip, id: destination
    end

    assert_redirected_to destinations_path
  end
end
