Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  defaults format: :json do
    resources :hello, only: [:index] do
      get 'hello', to: 'hello#index'
    end
  end
end
