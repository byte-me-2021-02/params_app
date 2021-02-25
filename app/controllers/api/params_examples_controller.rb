class Api::ParamsExamplesController < ApplicationController
  def query_example
    p "HERE ARE THE PARAMS"
    @output_message = "Here is the evil version of your name #{params[:first_name].upcase.reverse}"
    render 'query.json.jb'
  end

  def name
    # # take in username
    # p params[:name]
    # # make all caps
    # p params[:name].upcase
    # send back to user
    @name = params[:name].upcase
    if @name[0] == "A"
      @message = "Your name begins with A"
    else
      @message = "I don't have a message for you..."
    end

    render 'name.json.jb'
  end

  def guess
    # take in user input
    @user_guess = params[:guess].to_i
    # figure out if it's the right number
    if @user_guess > 35
      @message = "you guessed too high"
    elsif @user_guess < 35
      @message = "you guessed too low"
    elsif @user_guess == 35
      @message = "nice job you did the thing"
    end
    # return an appropriate message
    render 'guess.json.jb'
  end
end
