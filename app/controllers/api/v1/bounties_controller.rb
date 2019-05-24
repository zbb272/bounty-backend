class Api::V1::BountiesController < ApplicationController
  before_action :find_bounty, only: [:update, :show]
  def index
    @bounties = Bounty.all
    render json: @bounties
  end

  def update
    @bounty.update(bounty_params)
    if @bounty.save
      render json: @bounty, status: :accepted
    else
      render json: { errors: @bounty.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    new_bounty = Bounty.new(bounty_params)
    tags = Tag.all.select do |tag|
      params[:newtag_ids].include?(tag.id)
    end
    tags.each do |tag|
      new_bounty.tags << tag
    end
    new_bounty.save
    render json: new_bounty
  end

  def show
    render json: @bounty
  end

  private

  def bounty_params
    params.permit(:title, :description, :status, :amount, :user_id, :project_id, :newtag_ids)
  end

  def find_bounty
    @bounty = Bounty.find(params[:id])
  end
end
