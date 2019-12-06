class PagesController < ApplicationController
  def home
    @variable = "Je suis une variable";
    @nombre = 5;
  end

  def test
    @test = "Une nouvelle page";
  end
end
