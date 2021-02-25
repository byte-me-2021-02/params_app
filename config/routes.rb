Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # demo examples
    get "/query" => "params_examples#query_example"
    get "/segment_param/:city" => "params_examples#segment"



    # exercise examples
    get "/name" => "params_examples#name"
    get "/guess_query" => "params_examples#guess"
    get "/guess_segment/:user_guess" => "params_examples#segment_guess"

  end
end
