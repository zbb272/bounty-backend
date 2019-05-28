Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, :bounties, :projects, :tags, :applications, :reviews
    end
  end
end
