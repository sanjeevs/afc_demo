require 'test_helper'

class ProductShipmentsControllerTest < ActionController::TestCase
  setup do
    @product_shipment = product_shipments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_shipments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_shipment" do
    assert_difference('ProductShipment.count') do
      post :create, product_shipment: { customer_id: @product_shipment.customer_id, product_id: @product_shipment.product_id, return: @product_shipment.return, sent: @product_shipment.sent, ship_date: @product_shipment.ship_date }
    end

    assert_redirected_to product_shipment_path(assigns(:product_shipment))
  end

  test "should show product_shipment" do
    get :show, id: @product_shipment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_shipment
    assert_response :success
  end

  test "should update product_shipment" do
    patch :update, id: @product_shipment, product_shipment: { customer_id: @product_shipment.customer_id, product_id: @product_shipment.product_id, return: @product_shipment.return, sent: @product_shipment.sent, ship_date: @product_shipment.ship_date }
    assert_redirected_to product_shipment_path(assigns(:product_shipment))
  end

  test "should destroy product_shipment" do
    assert_difference('ProductShipment.count', -1) do
      delete :destroy, id: @product_shipment
    end

    assert_redirected_to product_shipments_path
  end
end
