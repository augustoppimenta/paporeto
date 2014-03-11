class Article < ActiveRecord::Base
  validates :title, :category, :published_at, presence: true
  belongs_to :category
  uploads_one :image, thumb: [90, 80], small: [260, 195], regular: [580, 240], full: [1280, 493]
end
