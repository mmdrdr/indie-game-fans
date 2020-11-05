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
  introduction: "プログラミングの勉強でゲームを作っています。",
  email: "test@test",
  password: 111111,
  image: open("./app/assets/images/rabbit.png")
)

# ユーザー2
User.create!(
  name: "おかめ",
  introduction: "ホラーばっかり作ってます。",
  email: "test2@test",
  password: 222222222,
  image: open("./app/assets/images/okame.jpg")
)

# ユーザー3
User.create!(
  name: "ももたろう",
  introduction: "リアルなグラフィックをつくるのが得意です。",
  email: "test3@test",
  password: 333333333,
  image: open("./app/assets/images/momotaro.png")
)

# ユーザー4
User.create!(
  name: "あかおに",
  introduction: "きままにゲームをつくっています。",
  email: "test4@test",
  password: 444444444,
  image: open("./app/assets/images/akaoni.png")
)

# ユーザー5
User.create!(
  name: "あおおに",
  introduction: "少しでも多くの人に楽しんでいただけるとうれしいです。",
  email: "test5@test",
  password: 555555555,
  image: open("./app/assets/images/aooni.png")
)

# ユーザー6
User.create!(
  name: "ぶきみなネコ",
  introduction: "コメントはぜんぶチェックしているので、たくさんコメントしていただけるとうれしいです。",
  email: "test6@test",
  password: 66666666,
  image: open("./app/assets/images/cat.png")
)

# ユーザー7
User.create!(
  name: "ヨウナシ",
  introduction: "かわいいフンイキのゲームをつくるのがすきです。",
  email: "test7@test",
  password: 77777777,
  image: open("./app/assets/images/younashi.png")
)

# ユーザー8
User.create!(
  name: "うしどし",
  introduction: "ゲームはあそぶ専門です。",
  email: "test8@test",
  password: 888888888,
  image: open("./app/assets/images/ushi.jpg")
)

# ユーザー9
User.create!(
  name: "ふゆでもかき氷",
  introduction: "いろんなクリエイターの方をみつけたいです。",
  email: "test9@test",
  password: 999999999,
  image: open("./app/assets/images/koori.jpg")
)

# ユーザー10
User.create!(
  name: "ほうさく",
  introduction: "いまはプレイヤーですが、いずれはじぶんでもつくってみたいとおもいます。",
  email: "test10@test",
  password: 1010101010,
  image: open("./app/assets/images/kome.jpg")
)

# ゲーム1
Game.create!(
  user_id: 1,
  title: "ブロックくずし",
  introduction: "JavaScriptの勉強でブロック崩しを作ってみました。キーボードの左右で操作できます。開始直後にすぐ右下に移動するので気をつけてください。
  https://github.com/mmdrdr/block_break"  
)

# ゲーム2
Game.create!(
  user_id: 1,
  title: "なんとかひきとめろ！",
  introduction: "あなたは、もうフラレそう...。 望みは少ないけれど、あなたのタイピング力で、なんとか言葉巧みにひきとめろ！https://github.com/mmdrdr/typing"
)

# ゲーム3
Game.create!(
  user_id: 2,
  title: "呪われてるような古民家",
  introduction: "まるで呪われているかのような古民家を探索するホラーゲームです。ただ、呪われていないので出てくるのはただの住人です。"
)

# ゲーム4
Game.create!(
  user_id: 3,
  title: "いきなりサバンナ",
  introduction: "あなたが朝目覚めると、なぜかサバンナのシマウマになっていた。激動のサバンナを生き抜くシマウマシミュレーション！"
)

# ゲーム5
Game.create!(
  user_id: 4,
  title: "マッハりょこう",
  introduction: "たまにはシゴトを忘れて戦闘機でりょこうしませんか。"
)

# ゲーム6
Game.create!(
  user_id: 7,
  title: "そらとぶクニのモノガタリ",
  introduction: "地上はるか高くに存在する「そらとぶクニ」。平和なこのクニにマモノが押し寄せてきた。マモノたちをたおし平和を取り戻せ。"
)

# ゲーム7
Game.create!(
  user_id: 5,
  title: "ジゴクのジグソーパズル",
  introduction: "ゲームなのにジグソーパズル。さらに無地。これはゲームというより修行。"
)

# ゲーム8
Game.create!(
  user_id: 6,
  title: "タイマンサッカー",
  introduction: "新感覚サッカーゲーム。プレイヤーはまさかの1対1のタイマン。オンラインバトルもできます。"
)

# ゲーム9
Game.create!(
  user_id: 4,
  title: "ママチャリレース",
  introduction: "ママチャリで街中を疾走して、相手より早くゴールしましょう。道交法を守らないとケイサツに捕まっちゃうので気をつけて。"
)

# ゲーム10
Game.create!(
  user_id: 5,
  title: "レッツオーケストラ",
  introduction: "あなたはオーケストラの指揮者。流れてくるノーツに合わせて指揮して、最高の音楽をつくろう。"
)

# ゲーム画像1 ブロックくずし
GameImage.create!(
  game_id: 1,
  image: open("./app/assets/images/block_break.png")
)

# ゲーム画像2 なんとかひきとめろ
2.times do |n|
  GameImage.create!(
    game_id: 2,
    image: open("./app/assets/images/keep#{n + 1}.png")
  )
end

# ゲーム画像3 呪われているような古民家
4.times do |n|
  GameImage.create!(
    game_id: 3,
    image: open("./app/assets/images/horror#{n + 1}.jpg")
  )
end

# ゲーム画像4 いきなりサバンナ
3.times do |n|
  GameImage.create!(
    game_id: 4,
    image: open("./app/assets/images/savanna#{n + 1}.jpg")
  )
end

# ゲーム画像5 マッハりょこう
GameImage.create!(
  game_id: 5,
  image: open("./app/assets/images/aircraft.jpg")
)

# ゲーム画像6 そらとぶクニのモノガタリ
3.times do |n|
  GameImage.create!(
    game_id: 6,
    image: open("./app/assets/images/rpg#{n + 1}.jpg")
  )
end

# ゲーム画像7 ジゴクのジグソーパズル
GameImage.create!(
  game_id: 7,
  image: open("./app/assets/images/puzzle.jpg")
)

# ゲーム画像8 タイマンサッカー
GameImage.create!(
  game_id: 8,
  image: open("./app/assets/images/man-to-man_soccer.jpg")
)

# ゲーム画像9 ママチャリレース
3.times do |n|
  GameImage.create!(
    game_id: 9,
    image: open("./app/assets/images/chari#{n + 1}.jpg")
  )
end

# ゲーム画像10 レッツオーケストラ
3.times do |n|
  GameImage.create!(
    game_id: 10,
    image: open("./app/assets/images/music#{n + 1}.jpg")
  )
end

# ジャンル
Genre.create!(
  [
    # ジャンル1
    {name: "アクション"},
    # ジャンル2
    {name: "シミュレーション"},
    # ジャンル3
    {name: "RPG"},
    # ジャンル4
    {name: "パズル"},
    # ジャンル5
    {name: "レース"},
    # ジャンル6
    {name: "スポーツ"},
    # ジャンル7
    {name: "ミュージック"},
    # ジャンル8
    {name: "ホラー"}
  ]
)

# ゲームジャンル1 ブロックくずし
GameGenre.create!(
  game_id: 1,
  genre_id: 1
)

# ゲームジャンル2 なんとかひきとめろ
GameGenre.create!(
  game_id: 2,
  genre_id: 1
)

# ゲームジャンル3 呪われているような古民家
GameGenre.create!(
  game_id: 3,
  genre_id: 8
)

# ゲームジャンル4 いきなりサバンナ
GameGenre.create!(
  game_id: 4,
  genre_id: 1,
)

GameGenre.create!(
  game_id: 4,
  genre_id: 2,
)

# ゲームジャンル5 マッハりょこう
GameGenre.create!(
  game_id: 5,
  genre_id: 2,
)

# ゲームジャンル6 そらとぶクニのモノガタリ
GameGenre.create!(
  game_id: 6,
  genre_id: 3,
)

# ゲームジャンル7 ジゴクのジグソーパズル
GameGenre.create!(
  game_id: 7,
  genre_id: 4,
)

# ゲームジャンル8 タイマンサッカー
GameGenre.create!(
  game_id: 8,
  genre_id: 6,
)

# ゲームジャンル9 ママチャリレース
GameGenre.create!(
  game_id: 9,
  genre_id: 5,
)

# ゲームジャンル10 レッツオーケストラ
GameGenre.create!(
  game_id: 10,
  genre_id: 7,
)

# コメント1 ブロックくずし
Comment.create!(
  user_id: 2,
  game_id: 1,
  comment: "ともてシンプルです。ただ、シンプルすぎてちょっとものたりないかも。",
)

Comment.create!(
  user_id: 3,
  game_id: 1,
  comment: "ちょっとボリュームがすくないかなー。",
)

Comment.create!(
  user_id: 4,
  game_id: 1,
  comment: "JavaScript初心者感が否めない。",
)

# コメント2 なんとかひきとめろ
Comment.create!(
  user_id: 5,
  game_id: 2,
  comment: "まさにバカゲーでした。",
)

Comment.create!(
  user_id: 6,
  game_id: 2,
  comment: "ひきとめる言葉がシュール。",
)

Comment.create!(
  user_id: 7,
  game_id: 2,
  comment: "これで別れ話を切り出された時の対策ができました。",
)

# コメント3 呪われているような古民家
Comment.create!(
  user_id: 8,
  game_id: 3,
  comment: "リアルすぎて怖かった。",
)

Comment.create!(
  user_id: 9,
  game_id: 3,
  comment: "常に誰かに見られているような感覚でした。",
)

Comment.create!(
  user_id: 10,
  game_id: 3,
  comment: "今日は寝れなさそう。",
)

# コメント4 いきなりサバンナ
Comment.create!(
  user_id: 8,
  game_id: 4,
  comment: "自然の厳しさを知りました。",
)

Comment.create!(
  user_id: 9,
  game_id: 4,
  comment: "シマウマの視点、めちゃめちゃ広い！",
)

Comment.create!(
  user_id: 10,
  game_id: 4,
  comment: "ライオンと目があった時はもうダメかと思いました。",
)

# コメント5 マッハりょこう
Comment.create!(
  user_id: 2,
  game_id: 5,
  comment: "速すぎて観光している暇がない。",
)

Comment.create!(
  user_id: 5,
  game_id: 5,
  comment: "マッハの世界は未知の世界でした。",
)

# コメント6 そらとぶクニのモノガタリ
Comment.create!(
  user_id: 4,
  game_id: 6,
  comment: "イラストもBGMもかわいい。",
)

Comment.create!(
  user_id: 10,
  game_id: 6,
  comment: "まさかの結末。",
)

# コメント7 ジゴクのジグソーパズル
Comment.create!(
  user_id: 1,
  game_id: 7,
  comment: "知らぬ間に没頭してしまいました。",
)

Comment.create!(
  user_id: 3,
  game_id: 7,
  comment: "無地パズルマスターになってしまうかも。",
)

Comment.create!(
  user_id: 7,
  game_id: 7,
  comment: "完成した時の達成感がすごいです。",
)

# コメント8 タイマンサッカー
Comment.create!(
  user_id: 2,
  game_id: 8,
  comment: "タイマンなので駆け引きが重要です。",
)

Comment.create!(
  user_id: 4,
  game_id: 8,
  comment: "実はパスがキーになってます。",
)

Comment.create!(
  user_id: 9,
  game_id: 8,
  comment: "まさかのオフサイドあるんだ！",
)

# コメント9 ママチャリレース
Comment.create!(
  user_id: 7,
  game_id: 9,
  comment: "カスタマイズ次第で可能性が広がります。",
)

Comment.create!(
  user_id: 5,
  game_id: 9,
  comment: "ガチャで電動アシスト当てました！",
)

Comment.create!(
  user_id: 10,
  game_id: 9,
  comment: "道交法の勉強になりました。",
)

# コメント10 レッツオーケストラ
Comment.create!(
  user_id: 9,
  game_id: 10,
  comment: "4拍子と3拍子の切り替えが難しい！",
)

Comment.create!(
  user_id: 10,
  game_id: 10,
  comment: "オーケストラのメンバーのクセがつよい。",
)

Comment.create!(
  user_id: 8,
  game_id: 10,
  comment: "事前の楽屋挨拶、大事です！",
)

# いいね1 ブロックくずし
Favorite.create!(
  user_id: 2,
  game_id: 1
)

# いいね2 なんとかひきとめろ
Favorite.create!(
  user_id: 2,
  game_id: 2
)

Favorite.create!(
  user_id: 3,
  game_id: 2
)

Favorite.create!(
  user_id: 4,
  game_id: 2
)

# いいね3 呪われているような古民家
Favorite.create!(
  user_id: 1,
  game_id: 3
)

Favorite.create!(
  user_id: 3,
  game_id: 3
)

Favorite.create!(
  user_id: 4,
  game_id: 3
)

Favorite.create!(
  user_id: 5,
  game_id: 3
)

Favorite.create!(
  user_id: 6,
  game_id: 3
)

# いいね4 いきなりサバンナ
Favorite.create!(
  user_id: 1,
  game_id: 4
)

Favorite.create!(
  user_id: 2,
  game_id: 4
)

#いいね5 マッハりょこう
Favorite.create!(
  user_id: 1,
  game_id: 5
)

Favorite.create!(
  user_id: 8,
  game_id: 5
)

# いいね6 そらとぶクニのモノガタリ
Favorite.create!(
  user_id: 6,
  game_id: 6
)

Favorite.create!(
  user_id: 4,
  game_id: 6
)

# いいね7 ジゴクのジグソーパズル

# いいね8 タイマンサッカー
Favorite.create!(
  user_id: 10,
  game_id: 8
)

Favorite.create!(
  user_id: 9,
  game_id: 8
)

# いいね9 ママチャリレース
Favorite.create!(
  user_id: 7,
  game_id: 9
)

Favorite.create!(
  user_id: 8,
  game_id: 9
)

# いいね10 レッツオーケストラ
Favorite.create!(
  user_id: 3,
  game_id: 10
)

Favorite.create!(
  user_id: 8,
  game_id: 10
)

# フォロー1
Relationship.create!(
  follower_id: 2,
  followed_id: 1
)

# フォロー2
Relationship.create!(
  follower_id: 1,
  followed_id: 2
)

Relationship.create!(
  follower_id: 3,
  followed_id: 2
)

Relationship.create!(
  follower_id: 4,
  followed_id: 2
)

# フォロー3
Relationship.create!(
  follower_id: 4,
  followed_id: 3
)

Relationship.create!(
  follower_id: 5,
  followed_id: 3
)

Relationship.create!(
  follower_id: 6,
  followed_id: 3
)

# フォロー4
Relationship.create!(
  follower_id: 5,
  followed_id: 4
)

Relationship.create!(
  follower_id: 6,
  followed_id: 4
)

Relationship.create!(
  follower_id: 7,
  followed_id: 4
)

# フォロー5
Relationship.create!(
  follower_id: 1,
  followed_id: 5
)

Relationship.create!(
  follower_id: 2,
  followed_id: 5
)

Relationship.create!(
  follower_id: 6,
  followed_id: 5
)

# フォロー6
Relationship.create!(
  follower_id: 2,
  followed_id: 6
)

Relationship.create!(
  follower_id: 4,
  followed_id: 6
)

# フォロー7
Relationship.create!(
  follower_id: 3,
  followed_id: 7
)

Relationship.create!(
  follower_id: 5,
  followed_id: 7
)

Relationship.create!(
  follower_id: 8,
  followed_id: 7
)

Relationship.create!(
  follower_id: 9,
  followed_id: 7
)

Relationship.create!(
  follower_id: 10,
  followed_id: 7
)

Relationship.create!(
  follower_id: 4,
  followed_id: 7
)

# 通知1
Notification.create!(
  visitor_id: 2,
  visited_id: 1
)

# 通知2
Notification.create!(
  visitor_id: 1,
  visited_id: 2
)

Notification.create!(
  visitor_id: 3,
  visited_id: 2
)

Notification.create!(
  visitor_id: 4,
  visited_id: 2
)

# 通知3
Notification.create!(
  visitor_id: 4,
  visited_id: 3
)

Notification.create!(
  visitor_id: 5,
  visited_id: 3
)

Notification.create!(
  visitor_id: 6,
  visited_id: 3
)

# 通知4
Notification.create!(
  visitor_id: 5,
  visited_id: 4
)

Notification.create!(
  visitor_id: 6,
  visited_id: 4
)

Notification.create!(
  visitor_id: 7,
  visited_id: 4
)

# 通知5
Notification.create!(
  visitor_id: 1,
  visited_id: 5
)

Notification.create!(
  visitor_id: 2,
  visited_id: 5
)

Notification.create!(
  visitor_id: 6,
  visited_id: 5
)

# 通知6
Notification.create!(
  visitor_id: 2,
  visited_id: 6
)

Notification.create!(
  visitor_id: 4,
  visited_id: 6
)

# 通知7
Notification.create!(
  visitor_id: 3,
  visited_id: 7
)

Notification.create!(
  visitor_id: 5,
  visited_id: 7
)

Notification.create!(
  visitor_id: 8,
  visited_id: 7
)

Notification.create!(
  visitor_id: 9,
  visited_id: 7
)

Notification.create!(
  visitor_id: 10,
  visited_id: 7
)

Notification.create!(
  visitor_id: 4,
  visited_id: 7
)

