class OrdersController < ApplicationController
  def create
    bow = Bow.find(params[:bow_id])
    order = Order.create!(status: "ordered")
    authorize order
    redirect_to order_path(order)
  end

  def show
    @order = Order.find(params[:id])
    authorize @order
  end
end

