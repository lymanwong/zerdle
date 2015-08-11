class PostingsController < ApplicationController
  before_action :set_posting, only: [:show, :edit, :update, :destroy]
  before_action :correct_user, only: [:edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  def index
    @postings = Posting.all
  end

  def show
  end

  def new
    @posting = current_user.postings.build
  end

  def edit
  end

  def create
    @posting = current_user.postings.build(posting_params)
    if @posting.save
      redirect_to @posting, notice: 'Post was successfully created.'
    else
      render action: 'new'
    end
  end

  def update
    if @posting.update(posting_params)
      redirect_to @posting, notice: 'Post was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def destroy
    @posting.destroy
    redirect_to postings_url
  end

  private
    def set_posting
      @posting = Posting.find_by(id: params[:id])
    end

    def correct_user
      @posting = current_user.postings.find_by(id: params[:id])
      redirect_to postings_path, notice: "Not authorized to edit this post" if @posting.nil?
    end

    def posting_params
      params.require(:posting).permit(:title, :description, :category, :condition, :price, :offer_shipping, :shipping_size, :offer_local_pickup)
    end
end
