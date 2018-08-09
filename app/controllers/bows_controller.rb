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

  end

  def update
   if @bow.update(bow_params)
      redirect_to bows_path
    else
      render :edit
    end
    authorize @bow
  end

  def destroy
    if @bow.delete
      redirect_to bows_path
    end
  end

  private

    def set_bow
      @bow = Bow.find(params[:id])
      authorize @bow
    end

    def bow_params
      params.require(:bow).permit("color", "size", "description", "photo", "num_in_stock", "price_cents")
    end

end


