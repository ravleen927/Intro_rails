class CreateArticleCountries < ActiveRecord::Migration[7.1]
  def change
    create_table :article_countries do |t|

      t.timestamps
    end
  end
end
