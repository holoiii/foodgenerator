class GeneratorController < ApplicationController
  def search
    @results = Food.generate(params[:budget].to_i, params[:people].to_i)
    @total_cost = "$" + @results.map(&:cost).inject(&:+).to_s
    @total_servings = @results.map(&:servings).inject(&:+).to_s
    @total_calories = @results.map(&:calories).inject(&:+).to_s

    render :partial => "home/results"
  end
end
