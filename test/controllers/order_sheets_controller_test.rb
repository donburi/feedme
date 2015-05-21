require 'test_helper'

class OrderSheetsControllerTest < ActionController::TestCase
  setup do
    @order_sheet = order_sheets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:order_sheets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order_sheet" do
    assert_difference('OrderSheet.count') do
      post :create, order_sheet: { order_day: @order_sheet.order_day, order_template_id: @order_sheet.order_template_id }
    end

    assert_redirected_to order_sheet_path(assigns(:order_sheet))
  end

  test "should show order_sheet" do
    get :show, id: @order_sheet
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order_sheet
    assert_response :success
  end

  test "should update order_sheet" do
    patch :update, id: @order_sheet, order_sheet: { order_day: @order_sheet.order_day, order_template_id: @order_sheet.order_template_id }
    assert_redirected_to order_sheet_path(assigns(:order_sheet))
  end

  test "should destroy order_sheet" do
    assert_difference('OrderSheet.count', -1) do
      delete :destroy, id: @order_sheet
    end

    assert_redirected_to order_sheets_path
  end
end
