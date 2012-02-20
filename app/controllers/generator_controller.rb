class GeneratorController < ApplicationController
  def search
    budget = params[:budget].to_i
    people = params[:people].to_i
    @results = Food.generate(budget, people)
    @people_range = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    render "home/index"
  end
end
