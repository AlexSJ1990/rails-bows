class OrdersController < ApplicationController
  def create
    bow = Bow.find(params[:bow_id])
    order = Order.create!(user: current_user, status: "ordered", bow: bow)
    authorize order
    redirect_to order_path(order)
  end

  def show
    @order = Order.find(params[:id])
    authorize @order
  end
end

