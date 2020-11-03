# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# ユーザー1
User.create!(
  name: "中年うさぎ",
  introduction: "趣味でゲームを作っています。",
  email: "test@test",
  password: 111111,
  image: open("./app/assets/images/rabbit.png")
)

# ユーザー2
User.create(
  name: "おかめ",
  introduction: "ホラーばっかり作ってます。",
  email: "test2@test",
  password: 222222,
  image: open("./app/assets/images/okame.jpg")
)

# ユーザー3
User.create(
  name: "user3",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test3@test",
  password: 333333,
  image: open("./app/assets/images/no_image.png")
)

# ユーザー4
User.create(
  name: "user4",
  introduction: "testtesttesttesttesttesttesttesttesttesttesttesttesttesttest",
  email: "test4@test",
  password: 444444,
  image: open("./app/assets/images/no_image.png")
)

# ゲーム1
Game.create(
  user_id: 1,
  title: "ブロック崩し",
  introduction: "JavaScriptの勉強でブロック崩しを作ってみました。キーボードの左右で操作できます。開始直後にすぐ右下に移動するので気をつけてください。
  https://github.com/mmdrdr/block_break"
)

# ゲーム2
Game.create(
  user_id: 1,
  title: "なんとかひきとめろ！",
  introduction: "あなたは、もうフラレそう...。 望みは少ないけれど、あなたのタイピング力で、なんとか言葉巧みにひきとめろ！https://github.com/mmdrdr/typing"
)

# ゲーム3
Game.create(
  user_id: 2,
  title: "呪われてるような古民家",
  introduction: "まるで呪われているかのような古民家を探索するホラーゲームです。ただ、呪われていないので出てくるのはただの住人です。"
)

# ゲーム4
Game.create(
  user_id: 3,
  title: "いきなりサバンナ",
  introduction: "あなたが朝目覚めると、なぜかサバンナのシマウマになっていた。激動のサバンナを生き抜くシマウマシミュレーション！"
)

# ゲーム画像1
GameImage.create(
  game_id: 1,
  image: open("./app/assets/images/block_break.png")
)

# ゲーム画像2
2.times do |n|
  GameImage.create(
    game_id: 2,
    image: open("./app/assets/images/keep#{n + 1}.png")
  )
end

# ゲーム画像3
4.times do |n|
  GameImage.create(
    game_id: 3,
    image: open("./app/assets/images/horror#{n + 1}.jpg")
  )
end

# ゲーム画像4
3.times do |n|
  GameImage.create(
    game_id: 4,
    image: open("./app/assets/images/savanna#{n + 1}.jpg")
  )
end

# ジャンル
Genre.create(
  [
    {name: "アクション"},
    {name: "シミュレーション"},
    {name: "RPG"},
    {name: "パズル"},
    {name: "レース"},
    {name: "スポーツ"},
    {name: "ミュージック"},
    {name: "ホラー"}
  ]
)

# ゲームジャンル1
GameGenre.create(
  game_id: 1,
  genre_id: 1
)

# ゲームジャンル2
GameGenre.create(
  game_id: 2,
  genre_id: 1
)

# ゲームジャンル3
GameGenre.create(
  game_id: 3,
  genre_id: 8
)

# ゲームジャンル4
GameGenre.create(
  game_id: 4,
  genre_id: 1,
)

GameGenre.create(
  game_id: 4,
  genre_id: 2,
)

Comment.create(
  user_id: 2,
  game_id: 1,
  comment: "ともてシンプルです。ただ、シンプルすぎてちょっとものたりないかも。",
)

Comment.create(
  user_id: 3,
  game_id: 1,
  comment: "ちょっとボリュームがすくないかなー。",
)

Comment.create(
  user_id: 4,
  game_id: 1,
  comment: "ひまつぶしにはなった。",
)

Comment.create(
  user_id: 2,
  game_id: 2,
  comment: "まさにバカゲーでした。",
)

Comment.create(
  user_id: 3,
  game_id: 2,
  comment: "ひきとめる言葉がシュール",
)

Comment.create(
  user_id: 4,
  game_id: 2,
  comment: "これで別れ話を切り出された時の対策ができました。",
)
