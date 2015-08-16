Rails.application.routes.draw do
  resources :episodes, only: [:index] do
    get ":year/:month/:day", to: "episodes#index", as: :episodes_by_date, on: :collection
  end

  root "episodes#index"
end
