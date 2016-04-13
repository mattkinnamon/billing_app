class CreateT201603s < ActiveRecord::Migration
  def change
    create_table :t201603s do |t|

      t.timestamps null: false
    end
  end
end
