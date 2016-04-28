User.create!(username: "Emily", email: "emily@emily.com", password: "abc123")

User.create!(username: "Jackie", email: "jackie@jackie.com", password: "abc123")

User.create!(username: "Carl", email: "carl@carl.com", password: "abc123")

User.create!(username: "Jillian", email: "jillian@jillian.com", password: "abc123")

Recipe.create!(title: "Cauliflower Muffin Tops", description: "Healthier alternative to traditional muffin tops.", longform_instructions: "BUNS:  The sweeter spices worked just fine for me in the bun capacity, but if you are looking for more of a savory creation from the start, you could swap in cayenne, garlic powder and sea salt. To reheat as buns, I sliced in half and put in the toaster oven at 350 for 5 minutes which led to ultimate crispiness :)", category: "Gluten Free")

Instruction.create!(step: "Heat oven to 400F", status: false, recipe_id: 1)

Instruction.create!(step: "Remove leaves and stem and chop cauliflower into florets", status: false, recipe_id: 1)

Instruction.create!(step: "In batches pulse the florets in a food processor until they resemble rice", status: false, recipe_id: 1)

Instruction.create!(step: "Combine rice with other ingredients and mix together.", status: false, recipe_id: 1)

Instruction.create!(step: "Divide into 5-6 balls and place on parchment paper covered baking sheet", status: false, recipe_id: 1)

Instruction.create!(step: "Bake for 40-45 minutes", status: false, recipe_id: 1)

Instruction.create!(step: "Broil on high for 5 minutes if you prefer more crispiness ", status: false, recipe_id: 1)

Ingredient.create!(name: "Medium Cauliflower", quantity: "1", status: false, recipe_id: 1)

Ingredient.create!(name: "Eggs", quantity: "2", status: false, recipe_id: 1)

Ingredient.create!(name: "Almond Meal", quantity: "5", unit: "tablespoons", status: false, recipe_id: 1)

Ingredient.create!(name: "Nutmeg", quantity: "1/2", unit: "teaspoon", status: false, recipe_id: 1)

Ingredient.create!(name: "Cinnamon", quantity: "1/2", unit: "teaspoon", status: false, recipe_id: 1)

Ingredient.create!(name: "Turmeric", quantity: "1/2", unit: "teaspoon", status: false, recipe_id: 1)

Ingredient.create!(name: "Almond Butter (optional)", quantity: "1", unit: "tablespoon", status: false, recipe_id: 1)
