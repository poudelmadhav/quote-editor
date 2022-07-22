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
