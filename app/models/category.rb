class Category < ActiveRecord::Base
  validates :name,  presence: true
  has_many :articles

  def to_param
    "#{id} #{name}".parameterize
  end

  def slug
    name.parameterize
  end

  def featured_article
    articles.where( featured: true).first
  end

  def featured_article_show
    articles.where( featured: false)
  end
end
