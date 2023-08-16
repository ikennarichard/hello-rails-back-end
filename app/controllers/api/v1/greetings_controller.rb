class Api::V1::GreetingsController < ApplicationController
  def index
    greeting = Greeting.order('RANDOM()').first.message
    render json: { message: greeting }
  end
end