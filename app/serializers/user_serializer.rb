class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :gamertag
  has_many :games
end
