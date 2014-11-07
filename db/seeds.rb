Book.delete_all
Recipe.delete_all
Ingredient.delete_all

b1 = Book.create(:title => 'La Cuisine', :cuisine => 'French', :chef => 'Francoise Bernard', :image => 'http://4.bp.blogspot.com/-KgaF17qZ1Gg/TbcnZg9s2BI/AAAAAAAAAuk/Y6DffqIjWJo/s1600/3_la-cuisine-everyday-french-home-cooking-by-francoise-bernard_7-best-books-on-french-cuisine.jpg')
b2 = Book.create(:title => 'Great Irish Cooking', :cuisine => 'Irish', :chef => 'Steve McFadden', :image => 'http://cdn2.lybrary.com/traditional_irish_cooking_the_fare_of_old_ireland_and_its_history_by_andy_gravette_debbie_cook_1859643450.jpg')

r1 = Recipe.create(:name => 'Banana Pancakes', :course => 'Dessert', :cooktime => 10, :servingsize => 4, :instructions => 'Cook in pan', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps1053_BB2406671D07_20_3b.jpg')
r2 = Recipe.create(:name => 'French Chicken', :course => 'Main', :cooktime => 125, :servingsize => 3, :instructions => 'Heat Oven', :image => 'http://img4-3.myrecipes.timeinc.net/i/recipes/ck/96/11/french-chicken-ck-222717-l.jpg')
r3 = Recipe.create(:name => 'French Onion Soup', :course => 'Apps', :cooktime => 35, :servingsize => 1, :instructions => 'Peel Onions, add water', :image => 'http://hostedmedia.reimanpub.com/TOH/Images/Photos/37/exps36687_HC1154010B12_06_1b.jpg')

i1 = Ingredient.create(:name => 'Flour', :measurement => '5 cups', :image => 'http://3.bp.blogspot.com/_Iel3IXJ_g7A/RzIFHOZyqRI/AAAAAAAACvk/f6zlHQ_QFSA/s400/flour.jpg')
i2 = Ingredient.create(:name => 'Eggs', :measurement => '3 whole', :image => 'http://images.elephantjournal.com/wp-content/uploads/2010/04/eggs1.jpg')
i3 = Ingredient.create(:name => 'Sugar', :measurement => '2 Tspn', :image => 'http://verifiedafricanmango.com/wp-content/uploads/2012/08/Sugar.jpg')
i4 = Ingredient.create(:name => 'Milk', :measurement => '4 cups', :image => 'http://images.wisegeek.com/pitcher-of-milk.jpg')
i5 = Ingredient.create(:name => 'Butter', :measurement => '1 stick', :image => 'http://www.cheesemaking.com/images/recipes/35Butter/Pics/pic51.jpg')
i6 = Ingredient.create(:name => 'Bacon', :measurement => '8 whole', :image => 'http://4.bp.blogspot.com/-HX7l3B-dPXY/UN0FeGidWHI/AAAAAAAADZE/FF9svNR700I/s1600/crispy-bacon.jpg')

b1.recipes = [r1, r2]
b1.recipes << r3

r1.ingredients = [i1, i2, i4]
r2.ingredients = [i1, i2, i4, i5, i6]
r3.ingredients = [i2, i3, i4]

