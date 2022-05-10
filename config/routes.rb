Rails.application.routes.draw do
  resources :posts do
    resources :comments
    # Replaces what's below:
    # get '/comments', to: 'comments#index', as: 'comments'
    # post '/comments', to: 'comments#create'
    # get '/comments/new', to: 'comments#new', as: 'new_comment'
    # get '/comments/:id', to: 'comment#show', as: 'comment'
    # get '/comments/:id/edit', to: 'comment#edit', as: 'edit_comment'
    # patch '/comments/:id', to: 'comment#update'
    # delete '/comments/:id', to: 'comments#destroy'
  end
  # Replaces what's below:
  # get '/posts/:post_id/comments', to: 'comments#index', as: 'post_comments'
  # post '/posts/:post_id/comments', to: 'comments#create'
  # get '/posts/:post_id/comments/new', to: 'comments#new', as: 'new_post_comment'
  # get '/posts/:post_id/comments/:id', to: 'comment#show', as: 'post_comment'
  # get '/posts/:post_id/comments/:id/edit', to: 'comment#edit', as: 'edit_post_comment'
  # patch '/posts/:post_id/comments/:id', to: 'comment#update'
  # delete '/posts/:post_id/comments/:id', to: 'comments#destroy'

  resources :pages
  # Replaces what's below:
  # get '/pages', to: 'pages#index', as: 'pages'
  # post '/pages', to: 'pages#create'
  # get '/pages/new', to: 'pages#new', as: 'new_page'
  # get '/pages/:id', to: 'pages#show', as: 'page'
  # get '/pages/:id/edit', to: 'pages#edit', as: 'edit_page'
  # patch '/pages/:id', to: 'pages#update'
  # delete '/pages/:id', to: 'pages#destroy'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
