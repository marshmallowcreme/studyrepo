class CreateStudies < ActiveRecord::Migration
  def self.up
    create_table :studies do |t|
      t.string :title
      t.text :body
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :user_id
      t.text :notes
      t.string :source_id
      t.string :source_url

      t.timestamps
    end
  end

  def self.down
    drop_table :studies
  end
end
