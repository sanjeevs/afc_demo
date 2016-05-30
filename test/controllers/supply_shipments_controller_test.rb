require 'test_helper'

class SupplyShipmentsControllerTest < ActionController::TestCase
  setup do
    @supply_shipment = supply_shipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:supply_shipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create supply_shipment" do
    assert_difference('SupplyShipment.count') do
      post :create, supply_shipment: { rcvd: @supply_shipment.rcvd, return: @supply_shipment.return, ship_date: @supply_shipment.ship_date, supplier_id: @supply_shipment.supplier_id, supply_id: @supply_shipment.supply_id }
    end

    assert_redirected_to supply_shipment_path(assigns(:supply_shipment))
  end

  test "should show supply_shipment" do
    get :show, id: @supply_shipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @supply_shipment
    assert_response :success
  end

  test "should update supply_shipment" do
    patch :update, id: @supply_shipment, supply_shipment: { rcvd: @supply_shipment.rcvd, return: @supply_shipment.return, ship_date: @supply_shipment.ship_date, supplier_id: @supply_shipment.supplier_id, supply_id: @supply_shipment.supply_id }
    assert_redirected_to supply_shipment_path(assigns(:supply_shipment))
  end

  test "should destroy supply_shipment" do
    assert_difference('SupplyShipment.count', -1) do
      delete :destroy, id: @supply_shipment
    end

    assert_redirected_to supply_shipments_path
  end
end
