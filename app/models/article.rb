class Article < ActiveRecord::Base
  validates :title, :category, :published_at, presence: true
  belongs_to :category
  uploads_one :image, thumb: [90, 80], small: [260, 195], regular: [580, 240], big: [940, 388], full: [1280, 493]

  #metodo estático / escopo
  def self.featured
    where(featured: true).first
  end

  def to_param
     "#{id} #{title}".parameterize
  end

  def related_articles
    category.articles.order(published_at: :desc).limit(8).where.not(id: id)
  end


end
