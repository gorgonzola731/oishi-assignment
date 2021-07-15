class User < ApplicationRecord
  has_many :relationships
  has_many :friends, through: :relationships, source: :friend
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'friend_id'
  has_many :friends, through: :reverse_of_relationships, source: :user

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(friend_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(friend_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.friends.include?(other_user)
  end
end
