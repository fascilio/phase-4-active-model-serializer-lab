# class TagSerializer < ActiveModel::Serializer
#   attributes :id, :name, :posts
# end
class TagSerializer < ActiveModel::Serializer
  attributes :name
  has_many :posts
end
