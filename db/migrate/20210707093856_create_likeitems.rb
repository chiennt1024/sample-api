class CreateLikeitems < ActiveRecord::Migration[6.1]
  def change
    create_table :likeitems do |t|

      t.timestamps
    end
  end
end
