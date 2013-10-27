require 'faker'

10.times do
  ToDoList.create(:task => Faker::Lorem.sentence)
end