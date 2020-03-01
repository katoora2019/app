# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Student.destroy_all
Enrollment.destroy_all
Course.destroy_all

NUMBER_STUDENT = 30
NUMBER_COURSES = 5

NUMBER_STUDENT.times do
Student.create(
  name: Faker::Name.name,
  age:  rand(18..60)
)
end
NUMBER_COURSES.times do
Course.create(
  name: Faker::Dessert.variety
)
end


student = Student.all
course = Course.all
puts "number of students #{student.count}"
puts "number of courses #{course.count}"