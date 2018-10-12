RSpec.describe "a visitor visits the book index page" do
  it 'should show a list of all astronauts' do
    astro_1 = Astronaut.create(name:"Jim",age:34,job:"Entrepeneur")
    astro_2 = Astronaut.create(name:"Jane",age:44,job:"Biologist")
    astro_3 = Astronaut.create(name:"Jack",age:54,job:"Neurologist")
    astro_4 = Astronaut.create(name:"John",age:24,job:"Pilot")

    visit "/astronauts"

    expect(page).to have_content(astro_1.name)
    expect(page).to have_content(astro_1.age)
    expect(page).to have_content(astro_1.job)
  end

  it 'should see average age of all astronauts' do
  astro_1 = Astronaut.create(name:"Jim",age:34,job:"Entrepeneur")
  astro_2 = Astronaut.create(name:"Jane",age:44,job:"Biologist")
  astro_3 = Astronaut.create(name:"Jack",age:54,job:"Neurologist")
  astro_4 = Astronaut.create(name:"John",age:24,job:"Pilot")

  visit '/astronauts'

  expect(page).to have_content('Average Age: 39')
  end

  it 'should see list of missions' do
    mission_1 = Mission.create(title:"Challenger",time_in_space:"365")
    mission_2 = Mission.create(title:"Forager",time_in_space:"50")
    mission_3 = Mission.create(title:"Epic",time_in_space:"1111")
    mission_4 = Mission.create(title:"Odyssey",time_in_space:"1200")
    mission_5 = Mission.create(title:"Recreating",time_in_space:"760")

    visit '/astronauts'

    expect(page).to have_content("Challenger")
    expect(page).to have_content("Epic")
    expect(page).to have_content("Forager")
    expect(page).to have_content("Odyssey")
    expect(page).to have_content("Recreating")
  end 

end
