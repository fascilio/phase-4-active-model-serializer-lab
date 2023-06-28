# class AuthorSerializer < ActiveModel::Serializer
#   attributes :id, :name
# end
class AuthorSerializer < ActiveModel::Serializer
  attributes :name
  has_one :profile
  has_many :posts

  def posts
    object.posts.map do |post|
      {
        title: post.title,
        short_content: truncate_content(post.content),
        tags: post.tags.pluck(:name)
      }
    end
  end

  private

  def truncate_content(content)
    return content if content.length <= 40

    content[0..39] + '...'
  end
end
