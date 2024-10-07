class User < ApplicationRecord
  has_secure_password
  has_many :reviews

  def update_reviews_count
    self.reviews_count = reviews.size
  end
end
