Rails.application.routes.draw do
  root "welcome#index"

  get 'word', to: 'words#index'
end
