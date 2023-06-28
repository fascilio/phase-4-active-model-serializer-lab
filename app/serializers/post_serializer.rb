# class PostSerializer < ActiveModel::Serializer
#   attributes :id, :title, :content, :author, :tags
# end
class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_one :author
  has_many :tags
end
