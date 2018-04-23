class CreateBaits < ActiveRecord::Migration
  def change
    create_table :baits do |t|

      t.timestamps
    end
  end
end
