Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get '/merchants/:merchant_id/dashboard', to: 'merchants#show'
  # get '/merchants/:merchant_id/items', to: 'merchant_items#index'
  # get '/merchants/:merchant_id/invoices', to: 'merchant_invoices#index'
  # get '/merchants/:merchant_id/invoices/:invoice_id', to: 'merchant_invoices#show'

  # get '/merchants/:merchant_id/items/:item_id/edit', to: 'merchant_items#edit'
  # get '/merchants/:merchant_id/items/:item_id', to: 'merchant_items#show'

  # patch '/merchants/:merchant_id/items/:item_id', to: 'merchant_items#update'
  resources :merchants, only: [:show] do
    resources :items, controller: 'merchant_items', only: %i[index edit show update]
    resources :invoices, controller: 'merchant_invoices', only: %i[index show]
  end
  # resources :admin, only: [:index] do
  #   resources :merchants, only: [:index]
  # end
  get '/admin', to: 'admin#index'
  get '/admin/merchants', to: 'admin/merchants#index'
end