Rails.application.routes.draw do
  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/home', to: 'static_pages#home'
  get '/londoneye', to: 'static_pages#londoneye'
  get '/stpauls', to: 'static_pages#stpauls'
  get '/toweroflondon', to: 'static_pages#toweroflondon'
end