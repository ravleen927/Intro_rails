class ArticleCountry < ApplicationRecord
    belongs_to :article
    belongs_to :country
  
    validates :article, presence: true
    validates :country, presence: true
    validates :article, uniqueness: { scope: :country }
  end