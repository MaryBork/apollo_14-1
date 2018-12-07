
require 'rails_helper'

  describe 'index page' do
    context 'as a visitor' do
      it 'sees a list of all astronaut data' do

        astronaut_1 = Astronaut.create(name:"Jim", age:36, job:"Lead Engineer")
        astronaut_2 = Astronaut.create(name:"John", age:45, job:"Pilot")
        astronaut_3 = Astronaut.create(name:"Jane", age:32, job:"Engineer I")

        visit astronaut_index_path

        expect(page).to have_content(astronaut_1.name)
        expect(page).to have_content(astronaut_1.age)
        expect(page).to have_content(astronaut_1.job)
        expect(page).to have_content(astronaut_3.name)
        expect(page).to have_content(astronaut_3.age)
        expect(page).to have_content(astronaut_3.job)
      end

      it ' sees average age of all astronauts' do
        astronaut_1 = Astronaut.create(name:"Jim", age:36, job:"Lead Engineer")
        astronaut_2 = Astronaut.create(name:"John", age:45, job:"Pilot")
        astronaut_3 = Astronaut.create(name:"Jane", age:32, job:"Engineer I")

        visit astronaut_index_path

        expect(page).to have_content("Average Age: 37")
      end

      # it 'sees alphabetically orderd list of each astronauts missions' do
      # end
      #
      # it 'sees total time in space for each astronaut' do
      #   astronaut_1 = Astronaut.create(name:"Jim", age:36, job:"Lead Engineer")
      #   astronaut_2 = Astronaut.create(name:"John", age:45, job:"Pilot")
      #   astronaut_3 = Astronaut.create(name:"Jane", age:32, job:"Engineer I")
      #
      #   mission_1 = astronaut_1.missions.create(time_in_space: 365)
      #   mission_2 = astronaut_1.missions.create(time_in_space: 74)
      #   mission_3 = astronaut_2.missions.create(time_in_space: 45)
      #   mission_4 = astronaut_3.missions.create(time_in_space: 400)
      #   mission_5 = astronaut_3.missions.create(time_in_space: 800)
      #
      #
      #   visit astronaut_index_path
      #
      #   expect(page).to have_content("#{astronaut_1.name}--Total Time In Space: 439")
      #   expect(page).to have_content("#{astronaut_2.name}--Total Time In Space: 45")
      #   expect(page).to have_content("#{astronaut_3.name}--Total Time In Space: 1200")
      # end
    end
  end
