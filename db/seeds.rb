
products = Product.all
products.each do |p|
  p.destroy
end

categories = Category.all
def del c
  c.each do |category|
    del category.categories
    category.destroy
  end
end

del categories

product_description = 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'


# Appliance
category_appliances = Category.create(title: 'Appliances')
categories = []

category_cookware = Category.create(title: 'Cookware', category_id: category_appliances.id)
categories << Category.create(title: 'Pots & Pans', category_id: category_cookware.id)
categories << Category.create(title: 'Pressure Cookers', category_id: category_cookware.id)

category_storage = Category.create(title: 'Storage', category_id: category_appliances.id)
categories << Category.create(title: 'Bottles', category_id: category_storage.id)
categories << Category.create(title: 'Containers & Jars', category_id: category_storage.id)

category_cutlery = Category.create(title: 'Cutlery & Tableware', category_id: category_appliances.id)
categories << Category.create(title: 'Cutlery', category_id: category_cutlery.id)
categories << Category.create(title: 'Condiment Sets', category_id: category_cutlery.id)

category_bar = Category.create(title: 'Bar Accessories', category_id: category_appliances.id)
categories << Category.create(title: 'Bottle Openers', category_id: category_bar.id)
categories << Category.create(title: 'Flasks', category_id: category_bar.id)


# Computers
category_computers = Category.create(title: 'Computers')

category_laptops = Category.create(title: 'Laptops', category_id: category_computers.id)
categories << Category.create(title: 'HP', category_id: category_laptops.id)
categories << Category.create(title: 'Lenova', category_id: category_laptops.id)
categories << Category.create(title: 'Dell', category_id: category_laptops.id)
categories << Category.create(title: 'All Brands', category_id: category_laptops.id)

category_comp_accessories = Category.create(title: 'Computer Accessories', category_id: category_computers.id)
categories << Category.create(title: 'External Hard Disks', category_id: category_comp_accessories.id)
categories << Category.create(title: 'PC Components', category_id: category_comp_accessories.id)
categories << Category.create(title: 'Computer Peripherals', category_id: category_comp_accessories.id)
categories << Category.create(title: 'Datacards & Routers', category_id: category_comp_accessories.id)
categories << Category.create(title: 'Mouse', category_id: category_comp_accessories.id)
categories << Category.create(title: 'Laptop Skins & Decals', category_id: category_comp_accessories.id)


# Health & Beauty
category_health = Category.create(title: 'Health & Beauty')

categories << Category.create(title: 'Bath & Skin Care', category_id: category_health.id)
categories << Category.create(title: 'Health & Safety', category_id: category_health.id)
categories << Category.create(title: 'Maternity Care', category_id: category_health.id)
categories << Category.create(title: 'Body Care Combos', category_id: category_health.id)


# Home & Garden
category_home = Category.create(title: 'Home & Garden')

category_home_urnishing = Category.create(title: 'Home Furnishing', category_id: category_home.id)
categories << Category.create(title: 'Bed', category_id: category_home_urnishing.id)
categories << Category.create(title: 'Bath', category_id: category_home_urnishing.id)
categories << Category.create(title: 'Kitchen', category_id: category_home_urnishing.id)
categories << Category.create(title: 'Living', category_id: category_home_urnishing.id)

category_home_decor = Category.create(title: 'Home Decor', category_id: category_home.id)
categories << Category.create(title: 'Flowers & Plants', category_id: category_home_decor.id)
categories << Category.create(title: 'Home Fragrances', category_id: category_home_decor.id)
categories << Category.create(title: 'Spiritual Decor', category_id: category_home_decor.id)
categories << Category.create(title: 'Wall Decor', category_id: category_home_decor.id)

categories << Category.create(title: 'Gardening Tools', category_id: category_home.id)


# Office Supplies
category_office_supplies = Category.create(title: 'Office Supplies')

category_books = Category.create(title: 'Books', category_id: category_office_supplies.id)
categories << Category.create(title: 'Academic & Professional', category_id: category_books.id)
categories << Category.create(title: 'Entrance Exam', category_id: category_books.id)
categories << Category.create(title: 'Literature & Fiction', category_id: category_books.id)
categories << Category.create(title: 'Children & Teens', category_id: category_books.id)
categories << Category.create(title: 'Indian Writing', category_id: category_books.id)
categories << Category.create(title: 'New Releases', category_id: category_books.id)
categories << Category.create(title: 'Bestsellers', category_id: category_books.id)

category_stationery = Category.create(title: 'Stationery', category_id: category_office_supplies.id)
categories << Category.create(title: 'Pens', category_id: category_stationery.id)
categories << Category.create(title: 'Calculators', category_id: category_stationery.id)
categories << Category.create(title: 'College Supplies', category_id: category_stationery.id)
categories << Category.create(title: 'Art Supplies', category_id: category_stationery.id)
categories << Category.create(title: 'Diaries & Notebooks', category_id: category_stationery.id)
categories << Category.create(title: 'Gifting', category_id: category_stationery.id)


# Sports Equipment
category_sports_equipment = Category.create(title: 'Sports Equipment')

category_fitness = Category.create(title: 'Fitness', category_id: category_sports_equipment.id)
categories << Category.create(title: 'Yoga Mats', category_id: category_fitness.id)
categories << Category.create(title: 'Gym Gloves', category_id: category_fitness.id)
categories << Category.create(title: 'Ab Exercisers', category_id: category_fitness.id)
categories << Category.create(title: 'Gym Balls', category_id: category_fitness.id)

category_indoor_sports = Category.create(title: 'Indoor Sports', category_id: category_sports_equipment.id)
categories << Category.create(title: 'Chess', category_id: category_indoor_sports.id)
categories << Category.create(title: 'Darts', category_id: category_indoor_sports.id)

category_team_sports = Category.create(title: 'Team Sports', category_id: category_sports_equipment.id)
categories << Category.create(title: 'Basketball', category_id: category_team_sports.id)
categories << Category.create(title: 'Cricket', category_id: category_team_sports.id)
categories << Category.create(title: 'Football', category_id: category_team_sports.id)
categories << Category.create(title: 'VolleyBall', category_id: category_team_sports.id)

category_racquet_sports = Category.create(title: 'Racquet Sports', category_id: category_sports_equipment.id)
categories << Category.create(title: 'Badminton', category_id: category_racquet_sports.id)
categories << Category.create(title: 'Squash', category_id: category_racquet_sports.id)
categories << Category.create(title: 'Table Tennis', category_id: category_racquet_sports.id)
categories << Category.create(title: 'Tennis', category_id: category_racquet_sports.id)

def add_photo product_photos
  product_photos.create([
    {
      small: 'preview-small-img1.png',
      large: 'preview-large-img1.jpg'
    },
    {
      small: 'preview-small-img2.png',
      large: 'preview-large-img2.jpg'
    },
    {
      small: 'preview-small-img3.png',
      large: 'preview-large-img3.jpg'
    },
    {
      small: 'preview-small-img4.png',
      large: 'preview-large-img4.jpg'
    }
  ])
end

def add_specifications product
  product.product_specifications.create([
    { property: product.category.properties.find_by(title: 'Body type'), value: 'Metal' },
    { property: product.category.properties.find_by(title: 'Spin Speed (rpm)'), value: '0/400/800/1000/1200' },
    { property: product.category.properties.find_by(title: 'Machine weight (kg)'), value: '75' },
    { property: product.category.properties.find_by(title: 'Wash System'), value: 'Tumble wash' },
    { property: product.category.properties.find_by(title: 'Door diameter (mm)'), value: '300' },
    { property: product.category.properties.find_by(title: 'Dimensions (w*d*h) without packing'), value: '595x595x850' },
    { property: product.category.properties.find_by(title: 'Power Supply'), value: ' 230V, 50Hz, 16Amps' },
    { property: product.category.properties.find_by(title: 'Motor (Watts)'), value: '440 for Wash/490 for Spin' },
    { property: product.category.properties.find_by(title: 'Drum basket'), value: ' stainless steel' },
    { property: product.category.properties.find_by(title: 'Adjustable Feet'), value: '4' }
  ])
end

n = 1
categories.each do |c|

  c.properties.create([
    { title: 'Body type' },
    { title: 'Spin Speed (rpm)' },
    { title: 'Machine weight (kg)' },
    { title: 'Wash System' },
    { title: 'Door diameter (mm)' },
    { title: 'Dimensions (w*d*h) without packing' },
    { title: 'Power Supply' },
    { title: 'Motor (Watts)' },
    { title: 'Drum basket' },
    { title: 'Adjustable Feet' }
    ])


  product = Product.create(name: "#{c.title} Whirlpool LTE5243D 3.4 CuFt", price: n * 840.50, photo: 'product-img1.jpg', 
    category_id: c.id, description: product_description, model: 'LTE5243D', weight: 80.95, units_in_stock: 25)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE8453D 5.2 CuFt", price: n * 900.55, photo: 'product-img2.jpg', 
    category_id: c.id, description: product_description, model: 'LTE8453D', weight: 72.10, units_in_stock: 2)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE963D 2.2 CuFt", price: n * 844.96, photo: 'product-img3.jpg',
    category_id: c.id, description: product_description, model: 'LTE963D', weight: 45.96, units_in_stock: 99)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE793F 3.0 CuFt", price: n * 812.42, photo: 'product-img4.jpg',
    category_id: c.id, description: product_description, model: 'LTE793F', weight: 69.12, units_in_stock: 10)
  add_photo product.photos
  add_specifications product


  product = Product.create(name: "#{c.title} Whirlpool LTE8453D 5.2 CuFt", price: n * 469.55, photo: 'product-img2.jpg', 
    category_id: c.id, description: product_description, model: 'LTE8453D', weight: 72.10, units_in_stock: 2)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE5243D 3.4 CuFt", price: n * 733.50, photo: 'product-img1.jpg', 
    category_id: c.id, description: product_description, model: 'LTE5243D', weight: 80.95, units_in_stock: 25)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE793F 3.0 CuFt", price: n * 600.42, photo: 'product-img4.jpg',
    category_id: c.id, description: product_description, model: 'LTE793F', weight: 69.12, units_in_stock: 10)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE963D 2.2 CuFt", price: n * 960.96, photo: 'product-img3.jpg',
    category_id: c.id, description: product_description, model: 'LTE963D', weight: 45.96, units_in_stock: 99)
  add_photo product.photos
  add_specifications product


  product = Product.create(name: "#{c.title} Whirlpool LTE793F 3.0 CuFt", price: n * 700.42, photo: 'product-img4.jpg',
    category_id: c.id, description: product_description, model: 'LTE793F', weight: 69.12, units_in_stock: 10)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE8453D 5.2 CuFt", price: n * 689.55, photo: 'product-img2.jpg', 
    category_id: c.id, description: product_description, model: 'LTE8453D', weight: 72.10, units_in_stock: 2)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE963D 2.2 CuFt", price: n * 150.96, photo: 'product-img3.jpg',
    category_id: c.id, description: product_description, model: 'LTE963D', weight: 45.96, units_in_stock: 99)
  add_photo product.photos
  add_specifications product

  product = Product.create(name: "#{c.title} Whirlpool LTE5243D 3.4 CuFt", price: n * 436.50, photo: 'product-img1.jpg', 
    category_id: c.id, description: product_description, model: 'LTE5243D', weight: 80.95, units_in_stock: 25)
  add_photo product.photos
  add_specifications product

  n += 0.04
end