user = User.find_or_initialize_by(email: 'holamundo@gmail.com')
user.password = '12345678'
user.password_confirmation = '12345678'

restaurant = user.restaurants.find_or_initialize_by(name: 'Pardos', address: 'Piura York')
restaurant2 = user.restaurants.find_or_initialize_by(name: 'Chicken KFC', address: 'Los Olivos City')


user.save
