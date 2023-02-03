class PostSerializer < ActiveModel::Serializer
  attributes :title, :content
  has_many :tags 
  belongs_to :author

  def short_content
    "#{object.content[0..39]}..."
  
  end
end
