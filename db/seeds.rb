breakfast = Course.create!(name: "Breakfast")
lunch = Course.create!(name: "Lunch")
dinner = Course.create!(name: "Dinner")
sides = Course.create!(name: "Sides")
beverages = Course.create!(name: "Beverages")
desserts = Course.create!(name: "Desserts")


Dish.create!(course: breakfast, name: "Eggs", description: "Scrambled, Fried, or Poached", price: 3.99)
Dish.create!(course: breakfast, name: "Pancakes", description: "Chocolate Chip or Blueberry", price: 7.99)
Dish.create!(course: breakfast, name: "Bacon", description: "Regular or Canadian", price: 4.99)

Dish.create!(course: lunch, name: "Sandwich", description: "BLT or Grilled Cheese", price: 8.99)
Dish.create!(course: lunch, name: "Soup", description: "Soup of the Day: Cup or Bowl", price: 6.99)
Dish.create!(course: lunch, name: "Burrito", description: "Better than Chipotle", price: 7.99)

Dish.create!(course: dinner, name: "Steak", description: "Rare, Medium, or Burned", price: 12.99)
Dish.create!(course: dinner, name: "Pasta", description: "Red Sauce or White Sauce", price: 10.99)
Dish.create!(course: dinner, name: "Chicken", description: "Fried or Grilled", price: 10.99)

Dish.create!(course: sides, name: "Salad", description: "Ranch or Caesar Dressing", price: 4.99)
Dish.create!(course: sides, name: "Fries", description: "Curly or Not Curly", price: 3.99)
Dish.create!(course: sides, name: "Nachos", description: "You probably shouldn't", price: 5.99)

Dish.create!(course: beverages, name: "Lemonade", price: 1.99)
Dish.create!(course: beverages, name: "Iced Tea", price: 1.99)
Dish.create!(course: beverages, name: "Coke", price: 1.99)

Dish.create!(course: desserts, name: "Ice Cream", price: 3.99)
Dish.create!(course: desserts, name: "Pie", price: 3.99)
Dish.create!(course: desserts, name: "Milkshake", price: 3.99)
