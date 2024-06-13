class LightNovel < ApplicationRecord
  validates :title, presence: true, length: { maximum: 100 }, uniqueness: true # rubocop:disable Rails/UniqueValidationWithoutIndex
  validates :author, presence: true, length: { maximum: 50 }
  validates :description, presence: true, length: { minimum: 10 }
  validates :release_date, presence: true, date_validator: true
  validates :genre, presence:  true,
                    inclusion: { in:      %w[Fantasy Wuxia Sci-Fi Romance Mystery Horror Cultivation Regression], # rubocop:disable Layout/LineLength
                                 message: "%<value>s is not a valid genre" }
  validates :rating, presence:     true,
                     numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
end
