class CreateSearchParameters < ActiveRecord::Migration
  def change
    create_table :search_parameters do |t|
      t.string :name
      t.string :parameter
      t.string :kind
      t.string :category
      t.string :method

      t.timestamps
    end
  end
end
