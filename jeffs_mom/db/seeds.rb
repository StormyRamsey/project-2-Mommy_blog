# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


article1 = Article.create(
  title: "Good Summer Movies",
  text: "Thor, Spiderman, Star Wars",
  img_url: "http://img.clipartall.com/movie-reel-clip-art-google-search-movie-reel-clip-art-300_272.jpg"
)

Comment.create(
  commenter: "Andy",
  body: "good post",
  article: article1
)

article2 = Article.create(
title: "More Diapers for your Bucks",
text: "Walmart",
img_url: "https://cdn.multibrand.pgsitecore.com/en-US/-/media/Pampers/Pampers-US/Images/Loyalty/StarDiapers_MainPackshot_355x215.png"
)

Comment.create(
commenter: "Stormy",
body: "",
article: article2
)
