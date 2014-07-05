class CreatePoliticians < ActiveRecord::Migration
  def change
    create_table :politicians do |t|

      t.timestamps
    end
  end
end
