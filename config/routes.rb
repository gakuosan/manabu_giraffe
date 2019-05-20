Rails.application.routes.draw do
  resources :rent_houses do
  collection do
        post :confirm
      end
    end
end
