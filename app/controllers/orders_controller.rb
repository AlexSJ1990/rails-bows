class OrdersController < ApplicationController

  def index
    @bows = policy_scope(Bow)
  end

  def create
    bow = Bow.find(params[:bow_id])
    order = Order.create!(bow_sku: bow.sku, state: "pending", amount: bow.price, user: current_user, bow: bow)
    authorize order
    redirect_to new_order_payment_path(order)
  end

  def show
    @order = current_user.orders.find(params[:id])
    authorize @order
  end
end

