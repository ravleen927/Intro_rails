class Author < ApplicationRecord

  has_many :articles
  
    validates :name, presence: false, uniqueness: true
    validates :id, presence: true
  end