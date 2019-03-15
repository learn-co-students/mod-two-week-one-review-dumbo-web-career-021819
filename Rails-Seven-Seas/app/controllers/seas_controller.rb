class SeasController < ApplicationController
  #define your controller actions here

  def welcome
  end

  def index
    @seas = Sea.all
  end

  def new
    @sea = Sea.new
  end

  def show
    @sea = Sea.find(params[:id])
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def create
    @sea = Sea.create(params)
    redirect_to
    # if @sea.save
    #   redirect_to @sea
    # else
    #   # This line overrides the default rendering behavior, which
    #   # would have been to render the "create" view.
    #   render "new"
    # end
  end

  def edit
    @sea = Sea.find(params[:id])
  end

  def update
    @sea = Sea.find(params[:id])
  end

  def destroy
  end

  private
  # In controller actions, use this private method to access sea params from forms.
  # Example: @sea.update(sea_params)
  # check the return value of sea_params to see what you're working with!
  def sea_params
    params.require(:sea).permit(:name, :temperature, :bio, :mood, :image_url, :favorite_color, :scariest_creature, :has_mermaids)
  end

end
