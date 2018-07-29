class BowsController < ApplicationController
skip_before_action :authenticate_user!, only: :index
before_action :set_bow, only: [:show, :edit, :update, :destroy]

  def index
    @bows = policy_scope(Bow)
  end

  def new
    @bow = Bow.new
    authorize @bow
  end


   def create
    @bow = Bow.new(bow_params)
    @bow.user = current_user
    authorize @bow

    if @bow.save
      redirect_to bows_path
    else
      render "new"
    end
  end

  def show
    authorize @bow
  end

  def edit
    authorize @bow
  end

  def update

  end

  def destroy
  end

  private

    def set_bow
      @bow = Bow.find(params[:id])
      authorize @bow
    end

    def bow_params
      params.require(:bow).permit("color", "size", "description", "photo", "num_in_stock", "price_cents", "user_id")
    end

end


