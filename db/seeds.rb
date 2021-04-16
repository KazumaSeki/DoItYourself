# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# 　coding: utf-8

User.create!(
  [
    {
      email: 'guest@example.com',
      password: '123456',
      username: 'ゲストユーザー',
      profile: 'ご覧いただきありがとうございます！今後新しい機能をどんどん追加していきます！',
    },
    {
      email: 'yamadatarou@hoge.com',
      password: 'tarou12',
      username: '山田太郎',
      profile: 'DIY歴10年です。様々な作品を投稿しています。',
      profile_image: File.open('./app/assets/images/山田太郎のアイコン.png')
    },
    {
      email: 'suzukiitirou@hoge.com',
      password: 'itirou34',
      username: '鈴木一郎',
      profile: '山田さんの弟子です。いいDIYerになれるよう努力しています！',
      profile_image: File.open('./app/assets/images/鈴木一郎のアイコン.png')
    },
    {
      email: 'satouhanako@hoge.com',
      password: 'hanako56',
      username: '佐藤花子',
      profile: 'DIY初心者です。みなさんアドバイスをください！',
      profile_image: File.open('./app/assets/images/佐藤花子のアイコン.png')
    },
    {
      email: 'saitou@hoge.com',
      password: 'saitou78',
      username: '斉藤元気',
      profile: 'これからたくさん投稿します！お楽しみに！',
      profile_image: File.open('./app/assets/images/斉藤元気のアイコン.png')
    }
  ]
)

Recipe.create!(
  [
    {
      user_id: '2',
      title: 'ロングデスク',
      content:
      '材料：
       ・天板【910×500×25】ノッティングパイン材 3枚
       ・足【45×45×665】SPF材 8本
       ・添え木ロング【2550×89×19】SPF材 3枚
       ・添え木ショート【322×89×19】SPF材 13枚
       工程：
       ・足と添木ショートを組み立てる
       ・添木ロングと組み合わせる
       ・添木ショートと組み合わせる
       ・天板3枚を1枚にする',
      image: File.open('./app/assets/images/作品1.png')
    },
    {
      user_id: '3',
      title: '本棚',
      content:
      '材料：
      ・柱 2×4（ツーバイフォー）材木 2本
      ・棚板 1×8材木 5枚
      ・紙やすり（240・120それぞれ1枚）
      ・ステイン（水性アトム自然カラーミディアムオーク）
      ・2×4用ディアウォールR 2組
      ・刷毛3本セット
       工程：
       ・材木・やすりがけ
       ・材木・塗装
       ・金具取り付け
       ・組み立て',
      image: File.open('./app/assets/images/作品2.png')
    },
    {
      user_id: '4',
      title: '100均で作れるおしゃれ壁掛け収納',
      content:
      '材料：
      ・ワイヤーネット
      ・結束バンド
      ・ハサミ
       工程：
       ・ワイヤーネットを折り曲げる
       ・結束バンドで連結する',
      image: File.open('./app/assets/images/作品3.png')
    }
  ]
)
