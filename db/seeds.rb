user_params = [
  {
    name: "Austin",
  }
]

User.delete_all
User.create!(user_params)
puts "初期データの投入に成功しました!"