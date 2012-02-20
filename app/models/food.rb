class Food < ActiveRecord::Base
  CALORIES_PER_PERSON = 500

  def self.generate(budget, people, opts={})
    temp_calories = 0
    temp_budget = 0
    food_array = []
    used_food_array = []
    while (temp_budget < budget) && (used_food_array.count < Food.count)
      rand_id = rand(Food.count+1)
      food_item = Food.first(:conditions => ["id >= ?", rand_id])
      if used_food_array.include?(food_item) || food_array.include?(food_item)
        #tried the food item already
      elsif ((temp_budget + food_item.cost) > budget)
        used_food_array << food_item
        #skip to next food
      else
        used_food_array << food_item
        food_array << food_item
        temp_budget += food_item.cost
      end
    end
    food_array
  end
end

