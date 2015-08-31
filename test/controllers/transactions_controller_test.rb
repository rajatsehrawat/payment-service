require 'test_helper'

class TransactionsControllerTest < ActionController::TestCase
  setup do
    @transaction = transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:transactions)
  end

  test "should create transaction" do
    assert_difference('Transaction.count') do
      post :create, transaction: { address1: @transaction.address1, amount: @transaction.amount, booking_id: @transaction.booking_id, city: @transaction.city, country: @transaction.country, email: @transaction.email, firstname: @transaction.firstname, lastname: @transaction.lastname, phone: @transaction.phone, productinfo: @transaction.productinfo, state: @transaction.state, status_id: @transaction.status_id, txnid: @transaction.txnid, zipcode: @transaction.zipcode }
    end

    assert_response 201
  end

  test "should show transaction" do
    get :show, id: @transaction
    assert_response :success
  end

  test "should update transaction" do
    put :update, id: @transaction, transaction: { address1: @transaction.address1, amount: @transaction.amount, booking_id: @transaction.booking_id, city: @transaction.city, country: @transaction.country, email: @transaction.email, firstname: @transaction.firstname, lastname: @transaction.lastname, phone: @transaction.phone, productinfo: @transaction.productinfo, state: @transaction.state, status_id: @transaction.status_id, txnid: @transaction.txnid, zipcode: @transaction.zipcode }
    assert_response 204
  end

  test "should destroy transaction" do
    assert_difference('Transaction.count', -1) do
      delete :destroy, id: @transaction
    end

    assert_response 204
  end
end
