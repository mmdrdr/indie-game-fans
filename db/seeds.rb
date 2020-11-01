# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
  name: "test",
  introduction: "ゆくゆくはゲームも作りたいと思っています。",
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

User.create!(
  name: "user4",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test4@test",
  password: 444444,
  image: open("./app/assets/images/no_image.png")
)

Game.create!(
  user_id: 1,
  title: "ブロック崩し",
  introduction: "JavaScriptの勉強でブロック崩しを作ってみました。キーボードの左右で操作できます。開始直後にすぐ右下に移動するので気をつけてください。
  https://github.com/mmdrdr/block_break"
)

GameImage.create!(
  game_id: 1,
  image: open("./app/assets/images/block_break.png")
)

Game.create!(
  user_id: 2,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest"
)

GameImage.create!(
  game_id: 2,
  image: open("./app/assets/images/aircraft.jpg")
)

Game.create!(
  user_id: 3,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest"
)

Game.create!(
  user_id: 4,
  title: "test",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest"
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
