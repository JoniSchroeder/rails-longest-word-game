class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(8).to_a

  end

  def score
    user_answer = params[:word]

    @letters = @letters.split

    @include = user_answer.chars.all? do |i|
      i.includes(@letters)
    end

    if @include == false
      puts "Sorry but Test cant be build out of this letters"
    elsif
    end
  end
end
