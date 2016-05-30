require 'test_helper'

class ProductionRunsControllerTest < ActionController::TestCase
  setup do
    @production_run = production_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:production_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create production_run" do
    assert_difference('ProductionRun.count') do
      post :create, production_run: { amount: @production_run.amount, expiry_date: @production_run.expiry_date, lot_id: @production_run.lot_id, mfgd_date: @production_run.mfgd_date, producer_id: @production_run.producer_id, product_id: @production_run.product_id }
    end

    assert_redirected_to production_run_path(assigns(:production_run))
  end

  test "should show production_run" do
    get :show, id: @production_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @production_run
    assert_response :success
  end

  test "should update production_run" do
    patch :update, id: @production_run, production_run: { amount: @production_run.amount, expiry_date: @production_run.expiry_date, lot_id: @production_run.lot_id, mfgd_date: @production_run.mfgd_date, producer_id: @production_run.producer_id, product_id: @production_run.product_id }
    assert_redirected_to production_run_path(assigns(:production_run))
  end

  test "should destroy production_run" do
    assert_difference('ProductionRun.count', -1) do
      delete :destroy, id: @production_run
    end

    assert_redirected_to production_runs_path
  end
end
