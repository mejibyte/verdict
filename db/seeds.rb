# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Seeding problems..."
p = Problem.new
p.assign_attributes({:title => "Sum of two numbers", 
                     :body => "Read two small integers and sum them.",
                     :time_limit => 1,
                     :published_at => Time.now}, :as => :admin)
p.save                     