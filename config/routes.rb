KITS::Application.routes.draw do

  resources :searches
  resources :interns  do
    post 'search', on: :collection
    post 'add_fields', on: :collection
    delete 'remove_fields', on: :collection
    resources :internships
  end

  root to: 'interns#index'
  get '/interns/:id/add_internship', to: 'interns#add_internship', as: 'add_internship'
end
