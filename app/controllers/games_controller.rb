require "open-uri"
require "json"

class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10)
  end

  def score
    word = URI.open("https://wagon-dictionary.herokuapp.com/#{params[:word]}").read
    @word = JSON.parse(word)
    @wordfound = @word["found"]
    if @wordfound && params[:word].include?(@letters)

  end
end
