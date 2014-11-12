# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(:email => "ikrogers@valdosta.edu",:fname=>"Ilya", :lname=>"Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 2)
User.create(:email => "ik@valdosta.edu",:fname=>"Ilya", :lname=>"Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 1)
User.create(:email => "ik2@valdosta.edu",:fname=>"Ilya", :lname=>"Rogers", :password => "123123123", :password_confirmation => "123123123", :u_type => 3)

