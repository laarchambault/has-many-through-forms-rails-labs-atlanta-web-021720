# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.destroy_all
Category.destroy_all

5.times do
    Post.create(title: Faker::Book.title, content: Faker::Quote.famous_last_words)
end

10.times do
    Category.create(name: Faker::Commerce.department)
end

10.times do
    PostCategory.create(post_id: Post.all.sample.id, category_id: Category.all.sample.id)
end

10.times do
    User.create(username: Faker::Internet.username, email: Faker::Internet.email)
end

20.times do
    Comment.create(content: Faker::TvShows::NewGirl.quote, user_id: User.all.sample.id, post_id: Post.all.sample.id)
end
