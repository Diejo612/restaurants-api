user = User.find_or_initialize_by(email: 'holamundo@gmail.com')
user.password = '12345678'
user.password_confirmation = '12345678'

restaurant = user.restaurants.find_or_initialize_by(name: 'Bardos', address: 'SJL City')
restaurant2 = user.restaurants.find_or_initialize_by(name: 'Jean Chicken', address: 'Los Olivos City')
restaurant3 = user.restaurants.find_or_initialize_by(name: 'Chicken KFC', address: 'SJL City')
restaurant4 = user.restaurants.find_or_initialize_by(name: 'Parrillas Jean', address: 'Agustino City')
restaurant5 = user.restaurants.find_or_initialize_by(name: 'Bardos lu', address: 'Miraflores City')
restaurant6 = user.restaurants.find_or_initialize_by(name: 'Popeyes', address: 'Surco City')
restaurant7 = user.restaurants.find_or_initialize_by(name: 'Fiona', address: 'San Isidro City')
restaurant7 = user.restaurants.find_or_initialize_by(name: 'Picanteria', address: 'Pueblo free City')

user.save
