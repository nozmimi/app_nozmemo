Rails.application.routes.draw do
  get 'nozmemo/index'
  get 'nozmemo/memo'
  get 'nozmemo' =>  'nozmemo#show'
end
