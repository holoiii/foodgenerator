class GeneratorController < ApplicationController
  def search
    @budget = params[:budget].to_i
    @people = params[:people].to_i
    @results = Food.generate(@budget, @people)
    @total_cost = "$" + @results.map(&:cost).inject(&:+).to_s
    @total_servings = @results.map(&:servings).inject(&:+).to_s
    @total_calories = @results.map(&:calories).inject(&:+).to_s
    @people_range = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    render "home/index"
  end
end
