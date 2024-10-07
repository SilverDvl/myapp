class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.integer :publication_year, null: false
      t.string :cover_img
      t.integer :total_chapters, null: false
      t.integer :read_chapters, default: 0
      t.integer :remaining_chapters, default: 0

      t.timestamps
    end
  end
end
