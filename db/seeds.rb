categories = Category.all

def del c
  c.each do |category|
    del category.categories
    category.destroy
  end
end

del categories

# Appliance
category_appliances = Category.create(title: 'Appliances')

category_cookware = Category.create(title: 'Cookware', category_id: category_appliances.id)
category_1 = Category.create(title: 'Pots & Pans', category_id: category_cookware.id)
category_1 = Category.create(title: 'Pressure Cookers', category_id: category_cookware.id)

category_storage = Category.create(title: 'Storage', category_id: category_appliances.id)
category_1 = Category.create(title: 'Bottles', category_id: category_storage.id)
category_1 = Category.create(title: 'Containers & Jars', category_id: category_storage.id)

category_cutlery = Category.create(title: 'Cutlery & Tableware', category_id: category_appliances.id)
category_1 = Category.create(title: 'Cutlery', category_id: category_cutlery.id)
category_1 = Category.create(title: 'Condiment Sets', category_id: category_cutlery.id)

category_bar = Category.create(title: 'Bar Accessories', category_id: category_appliances.id)
category_1 = Category.create(title: 'Bottle Openers', category_id: category_bar.id)
category_1 = Category.create(title: 'Flasks', category_id: category_bar.id)


# Computers
category_computers = Category.create(title: 'Computers')

category_laptops = Category.create(title: 'Laptops', category_id: category_computers.id)
category_1 = Category.create(title: 'HP', category_id: category_laptops.id)
category_1 = Category.create(title: 'Lenova', category_id: category_laptops.id)
category_1 = Category.create(title: 'Dell', category_id: category_laptops.id)
category_1 = Category.create(title: 'All Brands', category_id: category_laptops.id)

category_comp_accessories = Category.create(title: 'Computer Accessories', category_id: category_computers.id)
category_1 = Category.create(title: 'External Hard Disks', category_id: category_comp_accessories.id)
category_1 = Category.create(title: 'PC Components', category_id: category_comp_accessories.id)
category_1 = Category.create(title: 'Computer Peripherals', category_id: category_comp_accessories.id)
category_1 = Category.create(title: 'Datacards & Routers', category_id: category_comp_accessories.id)
category_1 = Category.create(title: 'Mouse', category_id: category_comp_accessories.id)
category_1 = Category.create(title: 'Laptop Skins & Decals', category_id: category_comp_accessories.id)


# Health & Beauty
category_health = Category.create(title: 'Health & Beauty')

category_laptops = Category.create(title: 'Bath & Skin Care', category_id: category_health.id)
category_laptops = Category.create(title: 'Health & Safety', category_id: category_health.id)
category_laptops = Category.create(title: 'Maternity Care', category_id: category_health.id)
category_laptops = Category.create(title: 'Body Care Combos', category_id: category_health.id)


# Home & Garden
category_home = Category.create(title: 'Home & Garden')

category_home_urnishing = Category.create(title: 'Home Furnishing', category_id: category_home.id)
category_1 = Category.create(title: 'Bed', category_id: category_home_urnishing.id)
category_1 = Category.create(title: 'Bath', category_id: category_home_urnishing.id)
category_1 = Category.create(title: 'Kitchen', category_id: category_home_urnishing.id)
category_1 = Category.create(title: 'Living', category_id: category_home_urnishing.id)

category_home_decor = Category.create(title: 'Home Decor', category_id: category_home.id)
category_1 = Category.create(title: 'Flowers & Plants', category_id: category_home_decor.id)
category_1 = Category.create(title: 'Home Fragrances', category_id: category_home_decor.id)
category_1 = Category.create(title: 'Spiritual Decor', category_id: category_home_decor.id)
category_1 = Category.create(title: 'Wall Decor', category_id: category_home_decor.id)

category_gardening_tools = Category.create(title: 'Gardening Tools', category_id: category_home.id)


# Office Supplies
category_office_supplies = Category.create(title: 'Office Supplies')

category_books = Category.create(title: 'Books', category_id: category_office_supplies.id)
category_1 = Category.create(title: 'Academic & Professional', category_id: category_books.id)
category_1 = Category.create(title: 'Entrance Exam', category_id: category_books.id)
category_1 = Category.create(title: 'Literature & Fiction', category_id: category_books.id)
category_1 = Category.create(title: 'Children & Teens', category_id: category_books.id)
category_1 = Category.create(title: 'Indian Writing', category_id: category_books.id)
category_1 = Category.create(title: 'New Releases', category_id: category_books.id)
category_1 = Category.create(title: 'Bestsellers', category_id: category_books.id)

category_stationery = Category.create(title: 'Stationery', category_id: category_office_supplies.id)
category_1 = Category.create(title: 'Pens', category_id: category_stationery.id)
category_1 = Category.create(title: 'Calculators', category_id: category_stationery.id)
category_1 = Category.create(title: 'College Supplies', category_id: category_stationery.id)
category_1 = Category.create(title: 'Art Supplies', category_id: category_stationery.id)
category_1 = Category.create(title: 'Diaries & Notebooks', category_id: category_stationery.id)
category_1 = Category.create(title: 'Gifting', category_id: category_stationery.id)


# Sports Equipment
category_sports_equipment = Category.create(title: 'Sports Equipment')

category_fitness = Category.create(title: 'Fitness', category_id: category_sports_equipment.id)
category_1 = Category.create(title: 'Yoga Mats', category_id: category_fitness.id)
category_1 = Category.create(title: 'Gym Gloves', category_id: category_fitness.id)
category_1 = Category.create(title: 'Ab Exercisers', category_id: category_fitness.id)
category_1 = Category.create(title: 'Gym Balls', category_id: category_fitness.id)

category_indoor_sports = Category.create(title: 'Indoor Sports', category_id: category_sports_equipment.id)
category_1 = Category.create(title: 'Chess', category_id: category_indoor_sports.id)
category_1 = Category.create(title: 'Darts', category_id: category_indoor_sports.id)

category_team_sports = Category.create(title: 'Team Sports', category_id: category_sports_equipment.id)
category_1 = Category.create(title: 'Basketball', category_id: category_team_sports.id)
category_1 = Category.create(title: 'Cricket', category_id: category_team_sports.id)
category_1 = Category.create(title: 'Football', category_id: category_team_sports.id)
category_1 = Category.create(title: 'VolleyBall', category_id: category_team_sports.id)

category_racquet_sports = Category.create(title: 'Racquet Sports', category_id: category_sports_equipment.id)
category_1 = Category.create(title: 'Badminton', category_id: category_racquet_sports.id)
category_1 = Category.create(title: 'Squash', category_id: category_racquet_sports.id)
category_1 = Category.create(title: 'Table Tennis', category_id: category_racquet_sports.id)
category_1 = Category.create(title: 'Tennis', category_id: category_racquet_sports.id)
