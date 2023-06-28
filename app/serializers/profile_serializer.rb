# class ProfileSerializer < ActiveModel::Serializer
#   attributes :id, :username, :email, :bio, :avatar_url
# end
class ProfileSerializer < ActiveModel::Serializer
  attributes :username, :email, :bio, :avatar_url
end
