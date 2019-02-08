5.times do
  Post.create({
    title: Faker::Movie.quote,
    body: Faker::NewGirl.quote
  })
end
