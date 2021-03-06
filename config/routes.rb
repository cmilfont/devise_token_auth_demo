Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do
      mount_devise_token_auth_for 'User', at: '/auth'
  end

  get 'api/products/members_only', to: 'products#members_only'

  get 'api/products/camisas', to: 'products#camisas'

  #mount_devise_token_auth_for 'User', at: 'auth'
  mount_devise_token_auth_for 'Mang', at: 'mangs'

  # this route will authorize visitors using the User class
  get 'demo/members_only', to: 'demo_user#members_only'

  # routes within this block will authorize visitors using the Mang class
  get 'demo/members_only_mang', to: 'demo_mang#members_only'

  # routes within this block will authorize visitors using the Mang or User class
  get 'demo/members_only_group', to: 'demo_group#members_only'
end
