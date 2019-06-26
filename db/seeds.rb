# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Linea password 9884 in passwords.txt
user = User.create!(
    first_name: 'Jaime', 
    last_name: 'Huarsaya', 
    phone: '+51986130678',
    email: 'jhuarsayar@unsa.edu.pe',
    password: 'Adelps105'
    )