Rails.application.routes.draw do
  root 'elevators#index'
  resources :elevators, only: :index
  get 'elevators/move/:floor' => 'elevators#move', as: 'elevators_move'
end
