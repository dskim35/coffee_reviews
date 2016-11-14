class ReviewsController < ApplicationController
  before_action :current_user_must_be_review_user, :only => [:edit, :update, :destroy]

  def current_user_must_be_review_user
    review = Review.find(params[:id])

    unless current_user == review.user
      redirect_to :back, :alert => "You are not authorized for that."
    end
  end

  def index
    @reviews = Review.all

    render("reviews/index.html.erb")
  end

  def show
    @photo = Photo.new
    @review = Review.find(params[:id])

    render("reviews/show.html.erb")
  end

  def new
    @review = Review.new

    render("reviews/new.html.erb")
  end

  def create
    @review = Review.new

    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.shop_id = params[:shop_id]
    @review.user_id = params[:user_id]

    save_status = @review.save

    if save_status == true
      redirect_to("/reviews/#{@review.id}", :notice => "Review created successfully.")
    else
      render("reviews/new.html.erb")
    end
  end

  def edit
    @review = Review.find(params[:id])

    render("reviews/edit.html.erb")
  end

  def update
    @review = Review.find(params[:id])

    @review.review = params[:review]
    @review.rating = params[:rating]
    @review.shop_id = params[:shop_id]
    @review.user_id = params[:user_id]

    save_status = @review.save

    if save_status == true
      redirect_to("/reviews/#{@review.id}", :notice => "Review updated successfully.")
    else
      render("reviews/edit.html.erb")
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    if URI(request.referer).path == "/reviews/#{@review.id}"
      redirect_to("/", :notice => "Review deleted.")
    else
      redirect_to(:back, :notice => "Review deleted.")
    end
  end
end
