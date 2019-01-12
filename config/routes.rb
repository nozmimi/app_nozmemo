Rails.application.routes.draw do
  get 'nozmemo/index' => 'nozmemo#index'
  get 'nozmemo/memo'

  get 'nozmemo/memo/:id' => 'nozmemo#memo'
end
