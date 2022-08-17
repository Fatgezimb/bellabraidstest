Rails.application.routes.draw do
    root to: 'application#index'

    scope path: '/api/v1/' do
        resources :products, only: %i[index show create update destroy]
    end

    get '*path', to: 'application#index'
end
