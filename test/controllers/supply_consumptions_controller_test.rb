require 'test_helper'

class SupplyConsumptionsControllerTest < ActionController::TestCase
  setup do
    @supply_consumption = supply_consumptions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supply_consumptions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply_consumption" do
    assert_difference('SupplyConsumption.count') do
      post :create, supply_consumption: { amount: @supply_consumption.amount, production_run_id: @supply_consumption.production_run_id, supply_id: @supply_consumption.supply_id }
    end

    assert_redirected_to supply_consumption_path(assigns(:supply_consumption))
  end

  test "should show supply_consumption" do
    get :show, id: @supply_consumption
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply_consumption
    assert_response :success
  end

  test "should update supply_consumption" do
    patch :update, id: @supply_consumption, supply_consumption: { amount: @supply_consumption.amount, production_run_id: @supply_consumption.production_run_id, supply_id: @supply_consumption.supply_id }
    assert_redirected_to supply_consumption_path(assigns(:supply_consumption))
  end

  test "should destroy supply_consumption" do
    assert_difference('SupplyConsumption.count', -1) do
      delete :destroy, id: @supply_consumption
    end

    assert_redirected_to supply_consumptions_path
  end
end
