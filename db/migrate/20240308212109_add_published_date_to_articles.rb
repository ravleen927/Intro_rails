class AddPublishedDateToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :published_date, :datetime
  end
end
