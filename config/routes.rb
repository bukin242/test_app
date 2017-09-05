Rails.application.routes.draw do

  get 'user_tests/:id' => 'user_test_controller#show', :as => 'user_test'
  get 'user_course/:id' => 'user_course_controller#show', :as => 'user_course'

  devise_for :users
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"
end
