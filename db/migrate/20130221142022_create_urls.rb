class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url, :null => false
      t.integer :nb_access, :default => 0

      t.timestamps
    end

    add_index :urls, :url, :unique => true

  end

  def self.down
    drop_table :urls
  end
end
