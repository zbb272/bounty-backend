class Api::V1::UsersController < ApplicationController
  before_action :find_user, only: [:update, :show]
  def index
    @users = User.all
    render json: @users
  end

  def update
    @user.update(user_params)

    tags = Tag.all.select do |tag|
      params[:newtag_ids].include?(tag.id)
    end

    tags.each do |tag|
      @user.tags << tag
    end

    # @user_tag = UserTag.find(user_id: @user.id, tag_id: user_params[:delete_tag_id])
    #
    # @user_tag.destroy

    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    @user = User.new(user_params)

    tags = Tag.all.select do |tag|
      params[:newtag_ids].include?(tag.id)
    end

    tags.each do |tag|
      @user.tags << tag
    end

    if @user.save
      render json: @user, status: :accepted
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @user
  end

  private

  def user_params
    params.permit(:id, :username, :password_digest, :description, :email, :github_url, :newtag_ids, :delete_tag_id)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
