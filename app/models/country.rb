class Country < ApplicationRecord
    has_many :article_countries
    has_many :articles, through: :article_countries
  
    validates :name, presence: true, uniqueness: true
    validate :requires_article
  end
  