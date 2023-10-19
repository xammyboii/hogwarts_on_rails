Rails.application.routes.draw do
  # GET / ⇒ houses#index
  root to: "houses#index"

  resources "houses", only: %i[index show]
  # GET /houses => houses#index
  # GET /houses/:id => houses#show

  resources "students", only: [:index, :show]
  # GET /students     => students#index
  # GET /students/:id => students#show
end
