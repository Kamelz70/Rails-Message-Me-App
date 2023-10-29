# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create(username: "kamel",password:"password")
User.create(username: "ali",password:"password")
User.create(username: "mohamed",password:"password")
User.create(username: "khaled",password:"password")
User.create(username: "ahmed",password:"password")
User.create(username: "zaky",password:"password")
zaky=User.find_by(username: "zaky")
Message.create(body: "hello",user:zaky)
Message.create(body: "hi",user:zaky)
Message.create(body: "there",user:zaky)
