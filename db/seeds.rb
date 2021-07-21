user_params = [
  {
    name: "Austin",
  },
  {
    name: "John",
  },
  {
    name: "Bob"
  },
  {
    name: "Cathy"
  }
]

User.delete_all
User.create!(user_params)
puts "userの初期データの投入に成功しました!"

relationship_params = [
  {
    user_id: 1,
    follow_id: 2,
  },
  {
    user_id: 2,
    follow_id: 3,
  }

]

Relationship.delete_all
Relationship.create!(relationship_params)
puts 'relationshipの初期データの投入に成功しました!'

puts 'すべての初期データ投入に成功しました!'

