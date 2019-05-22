class Api::V1::ApplicationsController < ApplicationController
  before_action :find_application, only: [:update, :show]
  def index
    @applications = Application.all
    render json: @applications
  end

  def update
    @application.update(application_params)
    if @application.save
      render json: @application, status: :accepted
    else
      render json: { errors: @application.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def create
    render json: Application.create(application_params)
  end

  def show
    render json: @application
  end

  private

  def application_params
    params.permit(:message, :user_id, :bounty_id)
  end

  def find_application
    @application = Application.find(params[:id])
  end
end
