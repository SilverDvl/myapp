class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :user_name, null: false
      t.string :password_digest, null: false
      t.string :email, null: false, unique: true
      t.integer :reviews_count, default: 0
      t.integer :last_read_chapter_id
      t.integer :total_books_read, default: 0

      t.timestamps
    end
  end
end
