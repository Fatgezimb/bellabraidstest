# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product_array = [
    {
        name: 'Product 1',
        description: 'Description 1',
        price: 1.00,
        duration_minutes: 60,
        image_url: 'https://picsum.photos/200/300'
    },
    {
        name: 'Product 2',
        description: 'Description 2',
        price: 2.00,
        duration_minutes: 120,
        image_url: 'https://picsum.photos/200/300'
    }
]
products = Product.create(product_array)
