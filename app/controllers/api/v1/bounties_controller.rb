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
    render json: Bounty.create(bounty_params)
  end

  def show
    render json: @bounty
  end

  private

  def bounty_params
    params.permit(:title, :description, :status, :amount, :user_id)
  end

  def find_bounty
    @bounty = Bounty.find(params[:id])
  end
end
