class Api::V1::ProjectsController < ApplicationController
  before_action :find_project, only: [:update, :show, :destroy]
  def index
    @projects = Project.all
    render json: @projects
  end

  def update
    @project.update(project_params)
    if @project.save
      render json: @project, status: :accepted
    else
      render json: { errors: @project.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def show
    render json: @project
  end

  def create
    render json: Project.create(project_params)
  end

  def destroy
    render json: @project.destroy()
  end

  private

  def project_params
    params.permit(:user_id, :name, :description, :progress, :github_url)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
