# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Companies
chulo = Company.find_or_create_by!(name: 'Chulo Solutions Pvt. Ltd.')
namespace = Company.find_or_create_by!(name: 'Namespace Inc.')
secret = Company.find_or_create_by!(name: 'Secrets Shop Pvt. Ltd.')

# Quotes
first = Quote.find_or_create_by!(company: chulo, name: 'First quote')
second = Quote.find_or_create_by!(company: chulo, name: 'Second quote')
third = Quote.find_or_create_by!(company: namespace, name: 'Third quote')

# Users
accountant = User.create(company: chulo,
                         email: 'accountant@chulo-solutions.com',
                         password: 'password')
manager = User.create(company: chulo,
                      email: 'manager@chulo-solutions.com',
                      password: 'password')
eavesdropper = User.create(company: namespace,
                           email: 'eavesdropper@namespace.jp',
                           password: 'password')
admin = User.create(company: secret,
                    email: 'admin@secretshop.com.np',
                    password: 'password')

# Line item dates
today = LineItemDate.find_or_create_by!(quote: first, date: Date.current)
next_week = LineItemDate.find_or_create_by!(quote: second, date: Date.current + 1.week)

# Line items
room_today = LineItem.find_or_create_by!(line_item_date: today,
                                         name: 'Meeting room',
                                         description: 'A cosy meeting room for 10 people',
                                         quantity: 1,
                                         unit_price: 1000)

catering_today = LineItem.find_or_create_by!(line_item_date: today,
                                             name: 'Meal tray',
                                             description: 'Our delicious meal tray',
                                             quantity: 10, unit_price: 25)

room_next_week = LineItem.find_or_create_by!(line_item_date: next_week,
                                             name: 'Meeting room',
                                             description: 'A cosy meeting room for 10 people',
                                             quantity: 1,
                                             unit_price: 1000)

catering_next_week = LineItem.find_or_create_by!(line_item_date: next_week,
                                                 name: 'Meal tray',
                                                 description: 'Our delicious meal tray',
                                                 quantity: 10,
                                                 unit_price: 25)
