class GameSerializer < ActiveModel::Serializer
  attributes :id, :title
  belongs_to :user, serializer: GameUserSerializer
end
