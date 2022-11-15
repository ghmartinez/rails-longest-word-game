class GamesController < ApplicationController
  def new
    @letters = []
    9.times { @letters << ("A".."Z").to_a.sample }
  end

  def score
    existing_letters = []
    not_existing_letters = []

    params[:word].chars.each do |letter|
      @letters.include?(letter) ? existing_letters << letter : not_existing_letters << letter
    end

    message = ""
    not_existing_letters.empty? ? message = "The method can be continued." : message = "The word contains letters not included in the grid."
  end
end
