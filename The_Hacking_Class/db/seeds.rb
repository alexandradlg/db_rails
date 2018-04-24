require 'faker'


30.times do
    course = Course.create(title: "#{Faker::Job.field}", body: Faker::Job.key_skill)
end

11.times do |i|
    x = rand(1..11)
    u = Course.find(x)
    if i >= 1
    student = Student.create(name: "#{Faker::Name.first_name}", course_id: u.id)
    end
  end

