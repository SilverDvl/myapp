class Book < ApplicationRecord
  has_many :reviews

  def update_remaining_chapters
    self.remaining_chapters = total_chapters - read_chapters
  end
end
