class Api::V1::ReviewsController < ApplicationController
  before_action :find_review, only: [:update, :show]
  def index
    @reviews = Review.all
    render json: @reviews
  end

  def update
    @review.update(review_params)
    if @review.save
      render json: @review, status: :accepted
    else
      render json: { errors: @review.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    render json: Review.create(review_params)
  end

  def show
    render json: @review
  end

  private

  def review_params
    params.permit(:rating, :message, :project_id, :user_id, :bounty_id)
  end

  def find_review
    @review = Review.find(params[:id])
  end
end
