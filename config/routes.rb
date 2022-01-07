# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :v1 do
    post 'users/access', to: 'users#access'
    resources :users, only: :create
    resources :services, only: %w[index show] do
      get 'work_shifts_count', to: 'work_shifts#work_shifts_count'
      resources :work_shifts, only: %w[index create destroy], shallow: true
    end
  end
end
