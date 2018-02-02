class AddColumnToUrlsClick < ActiveRecord::Migration[5.1]
  def change
  	add_column :urls, :click, :integer
  end
end
