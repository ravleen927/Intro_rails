class AddPublisherIdToArticles < ActiveRecord::Migration[7.1]
  def change
    add_reference :articles, :publisher, null: false, foreign_key: true
  end
end
