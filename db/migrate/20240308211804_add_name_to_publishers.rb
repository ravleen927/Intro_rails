class AddNameToPublishers < ActiveRecord::Migration[7.1]
  def change
    add_column :publishers, :name, :string
  end
end
