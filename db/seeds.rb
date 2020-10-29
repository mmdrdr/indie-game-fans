# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.create!(
  user_id: 1,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  image: open("./app/assets/images/aircraft.jpg")
)

Game.create!(
  user_id: 2,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  image: open("./app/assets/images/aircraft.jpg")
)

Game.create!(
  user_id: 3,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  image: open("./app/assets/images/aircraft.jpg")
)

Genre.create!(
  [
    {name: "アクション"},
    {name: "アドベンチャー"},
    {name: "RPG"},
    {name: "パズル"},
    {name: "レース"},
    {name: "スポーツ"},
    {name: "ミュージック"}
  ]
)

GameGenre.create!(
  game_id: 1,
  genre_id: 1
)

GameGenre.create!(
  game_id: 2,
  genre_id: 2
)

GameGenre.create!(
  game_id: 3,
  genre_id: 3
)

User.create!(
  name: "user1",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test@test",
  password: 111111,
  image: open("./app/assets/images/no_image.png")
)

User.create!(
  name: "user2",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test2@test",
  password: 222222,
  image: open("./app/assets/images/no_image.png")
)

User.create!(
  name: "user3",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test3@test",
  password: 333333,
  image: open("./app/assets/images/no_image.png")
)

Comment.create!(
  user_id: 1,
  game_id: 1,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)

Comment.create!(
  user_id: 2,
  game_id: 1,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)

Comment.create!(
  user_id: 3,
  game_id: 1,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)

Comment.create!(
  user_id: 1,
  game_id: 2,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)

Comment.create!(
  user_id: 2,
  game_id: 2,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)

Comment.create!(
  user_id: 3,
  game_id: 2,
  comment: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
)
