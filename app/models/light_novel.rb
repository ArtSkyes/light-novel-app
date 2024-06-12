class DateValidator < ActiveModel::EachValidator
    def validate_each(record, attribute, value)
        if value.present? && value >= Date.today
        record.errors.add(attribute, 'must be before today')
        end
    end
end

class LightNovel < ApplicationRecord
    validates :title, presence: true, length: { maximum: 50 }, uniqueness: true
    validates :author, presence: true, length: { maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 100 }
    validates :release_date, presence: true, date: { before: Proc.new { Date.today }, message: 'must be before today' }
    validates :genre, presence: true, inclusion: { in: %w[Fantasy Wuxia Sci-Fi Romance Mystery Horror Cultivation Regression], message: "%{value} is not a valid genre" }
    validates :rating, presence: true, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  end
  

  