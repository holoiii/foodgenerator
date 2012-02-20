class Food < ActiveRecord::Base
  CALORIES_PER_PERSON = 500

  def self.generate(budget, people, opts={})
    total_calories = people * CALORIES_PER_PERSON
    food_array = []
    temp_budget = 0
    10.times do
      temp_calories = 0
      temp_budget = 0
      food_array = []
      until temp_calories >= total_calories
        rand_id = rand(Food.count)
        food_item = Food.first(:conditions => ["id >= ?", rand_id])
        food_array << food_item
        temp_calories += food_item.calories
        temp_budget += food_item.cost
      end
      break if temp_budget <= budget
    end
    temp_budget <= budget ? food_array : nil
  end
end
