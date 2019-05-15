class Api::V1::TagsController < ApplicationController
  before_action :find_tag, only: [:update, :show]
  def index
    @tags = Tag.all
    render json: @tags
  end

  def update
    @tag.update(tag_params)
    if @tag.save
      render json: @tag, status: :accepted
    else
      render json: { errors: @tag.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    render json: Tag.create(tag_params)
  end

  def show
    render json: @tag
  end

  private

  def tag_params
    params.permit(:name)
  end

  def find_tag
    @tag = Tag.find(params[:id])
  end
end
