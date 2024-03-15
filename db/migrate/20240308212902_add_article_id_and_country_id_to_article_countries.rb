class AddArticleIdAndCountryIdToArticleCountries < ActiveRecord::Migration[7.1]
  def change
    add_reference :article_countries, :article, null: false, foreign_key: true
    add_reference :article_countries, :country, null: false, foreign_key: true
  end
end
