Rails.application.routes.draw do
  resources :sessions, only: [:new, :create, :destroy]
  resources :feeds do
    collection do
      post :confirm
    end
  end
  resources :users, only: [:new, :create, :show, :edit, :update]
  mount LetterOpenerWeb::Engine, at: "/outbox" if Rails.env.development?
end
