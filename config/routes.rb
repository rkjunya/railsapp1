Rails.application.routes.draw do
  get 'login' => "users#login_form"
  post 'login' => "users#login"
  post 'logout' => "users#logout"

  get 'kintore_posts/index' => "kintore_posts#index"
  get 'kintore_posts/new' => "kintore_posts#new"
  get 'kintore_posts/:id' => "kintore_posts#show"
  post 'kintore_posts/create' => "kintore_posts#create"
  get 'kintore_posts/:id/edit' => "kintore_posts#edit"
  post 'kintore_posts/:id/update' => "kintore_posts#update"
  post 'kintore_posts/:id/destroy' => "kintore_posts#destroy"

  get '/'  => "home#top"

end
