class AddNameToCountries < ActiveRecord::Migration[7.1]
  def change
    add_column :countries, :name, :string
  end
end
