# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
astro_1 = Astronaut.create(name:"Jim",age:34,job:"Entrepeneur")
astro_2 = Astronaut.create(name:"Jane",age:44,job:"Biologist")
astro_3 = Astronaut.create(name:"Jack",age:54,job:"Neurologist")
astro_4 = Astronaut.create(name:"John",age:24,job:"Pilot")

mission_1 = Mission.create(title:"Challenger",time_in_space:"365")
mission_2 = Mission.create(title:"Forager",time_in_space:"50")
mission_3 = Mission.create(title:"Epic",time_in_space:"1111")
mission_4 = Mission.create(title:"Odyssey",time_in_space:"1200")
mission_5 = Mission.create(title:"Recreating",time_in_space:"760")
