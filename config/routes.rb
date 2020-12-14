Rails.application.routes.draw do
  get 'post/index'
  get 'post/new'
  get 'post/show'
  get 'post/edit'
  devise_for :users
  root to: 'homes#top'

  resources :user, only: [:index, :show, :edit, :update, :destroy]
end
