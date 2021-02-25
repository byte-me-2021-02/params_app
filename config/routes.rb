Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # demo examples
    get "/query" => "params_examples#query_example"
    get "/segment_param/:city" => "params_examples#segment"
    post "/body_parameter" => "params_examples#body"



    # exercise examples
    get "/name" => "params_examples#name"
    get "/guess_query" => "params_examples#guess"
    get "/guess_segment/:guess" => "params_examples#guess"

  end
end
