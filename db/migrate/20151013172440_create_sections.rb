class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.column :title, :string
      t.column :chapter_id, :integer

      t.timestamps
    end
    create_table :chapters do |t|
      t.column :title, :string

      t.timestamps
    end
    add_column :lessons, :section_id, :integer
  end
end
