# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

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

User.create!(
  name: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test@test",
  password: 111111,
  image: open("./app/assets/images/no_image.png")
)

User.create!(
  name: "test2",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test2@test",
  password: 222222,
  image: open("./app/assets/images/no_image.png")
)

Game.create!(
  user_id: 1,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  image: open("./app/assets/images/aircraft.jpg")
)