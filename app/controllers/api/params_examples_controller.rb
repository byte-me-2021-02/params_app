class Api::ParamsExamplesController < ApplicationController
  def query_example
    p "HERE ARE THE PARAMS"
    @output_message = "Here is the evil version of your name #{params[:first_name].upcase.reverse}"
    render 'query.json.jb'
  end
end
