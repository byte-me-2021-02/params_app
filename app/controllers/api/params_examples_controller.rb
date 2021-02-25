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
    # binding.pry
    if @name[0] == "A"
      @message = "Your name begins with A"
    else
      @message = "I don't have a message for you..."
    end
    render 'name.json.jb'
  end

  def guess
    # take in user input
    user_guess = params[:guess].to_i    
    # figure out if it's the right number
    correct_answer = 35
    if user_guess > correct_answer
      @message = "you guessed too high"
    elsif user_guess < correct_answer
      @message = "you guessed too low"
    elsif user_guess == correct_answer
      @message = "nice job you did the thing"
    end
    # return an appropriate message
    render 'guess.json.jb'
  end

  def segment
    params[:city]
    render 'segment.json.jb'
  end

  def body
    @city = params[:city]
    render 'body.json.jb'
  end

  def secret
    # if username is hugh and password is swordfish, show a message
    if params[:username] == "hugh" && params[:password] == "swordfish"
      @message = "Valid Credentials"
    else
      @message = "Invalid Credentials"
    end
    render 'shhhh.json.jb'
  end
  
end
