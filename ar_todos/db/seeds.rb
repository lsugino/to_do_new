require 'faker'

10.times do
  Tasks.create(:todo => Faker::Lorem.sentence)
end