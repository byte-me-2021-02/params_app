class Api::ParamsExamplesController < ApplicationController
  def query_example
    render 'query.json.jb'
  end
end
