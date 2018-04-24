require 'faker'

10.times do
    couse = Course.create(title: "#{Faker::SiliconValley.company}", description: Faker::SiliconValley.motto)
  end

50.times do
    x = rand(1..10)
    u = Course.find(x)
    lesson = Lesson.create(course_id: u.id, title: "#{Faker::SiliconValley.invention}", body: Faker::SiliconValley.quote)
end
