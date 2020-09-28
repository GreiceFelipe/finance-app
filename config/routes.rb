Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'import_file#index'
  get 'import_file/index'
  post 'import_file/import'
end
