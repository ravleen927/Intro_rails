class AddVideoUrlToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :video_url, :string
  end
end
