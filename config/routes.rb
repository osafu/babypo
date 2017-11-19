Rails.application.routes.draw do
    
    root 'top#index'

    resources :spots, only: [:index, :new, :create, :edit, :update, :destroy] do
        collection do
          post :confirm
        end
    end

end
